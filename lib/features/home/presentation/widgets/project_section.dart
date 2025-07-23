import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:usman_portfolio/core/extensions/build_context_extension.dart';
import 'package:usman_portfolio/core/extensions/sized_box.dart';
import 'package:usman_portfolio/core/utils/utils.dart';
import 'package:usman_portfolio/features/home/domain/entities/projects_entity.dart';
import 'package:usman_portfolio/generated/assets.dart';

import 'heading_widget.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    var projectsList = ProjectsEntity.projects;
    return Container(
        color: Theme.of(context).colorScheme.surfaceContainer,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
            horizontal: Utils.isMobile(context.screenWidth) ? 16 : 24,
            vertical: Utils.isMobile(context.screenWidth) ? 48 : 56),
        child: Column(spacing: 20, children: [
          const HeadingWidget(title: "Projects"),
          15.0.height,
          ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: projectsList.length,
              itemBuilder: (context, index) {
                return ProjectCard(index: index, projectEntity: projectsList[index]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return 15.height;
              })
        ]));
  }
}

class ProjectCard extends StatelessWidget {
  final int index;
  final ProjectsEntity projectEntity;

  const ProjectCard({super.key, required this.index, required this.projectEntity});

  @override
  Widget build(BuildContext context) {
    final isEven = index % 2 == 0;

    final imageWidget = Expanded(
      flex: 1,
      child: Container(
        color: Theme.of(context).colorScheme.secondaryContainer,
        child: Image.asset(projectEntity.image),
      ),
    );

    final detailsWidget = Expanded(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.only(
            left: 24.0, right: 16.0, top: 30.0, bottom: 16.0),
        color: Theme.of(context).colorScheme.secondary,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 20,
            children: [
              Text(projectEntity.name,
                  style: Theme.of(context).textTheme.titleMedium),
              Text(projectEntity.description,
                  style: Theme.of(context).textTheme.labelSmall),
              _SkillTagsSection(techStacks: projectEntity.techStack),
              IconButton(
                  onPressed: () {}, icon: SvgPicture.asset(Assets.iconLink, color: Theme.of(context).colorScheme.secondary)),
            ]),
      ),
    );

    return IntrinsicHeight(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0)),
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: isEven
              ? [imageWidget, detailsWidget]
              : [detailsWidget, imageWidget],
        ),
      ),
    );
  }
}

class _SkillTagsSection extends StatelessWidget {
  final List<String> techStacks;

  const _SkillTagsSection({required this.techStacks});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: techStacks.map((skill) => _SkillTagItem(skill: skill)).toList(),
    );
  }
}

class _SkillTagItem extends StatelessWidget {
  final String skill;

  const _SkillTagItem({required this.skill});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 4.0),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(12.0)),
      child: Text(skill, style: Theme.of(context).textTheme.bodySmall),
    );
  }
}
