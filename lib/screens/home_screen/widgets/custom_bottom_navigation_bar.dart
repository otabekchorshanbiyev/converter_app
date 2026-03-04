import 'package:convertera_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:liquid_glass_renderer/liquid_glass_renderer.dart';


class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabChanged;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onTabChanged,
  });

  static const List<Map<String, dynamic>> tabs = [
    {'icon': Icons.swap_horiz_rounded, 'label': 'Konvert'},
    {'icon': Icons.show_chart_rounded, 'label': 'Grafik'},
    {'icon': Icons.star_border_rounded, 'label': 'Sevimli'},
    {'icon': Icons.settings_outlined, 'label': 'Sozlama'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: LiquidGlassLayer(
        settings:  LiquidGlassSettings(
          thickness: 18,
          blur: 12,
          glassColor: AppColors.bottomLiquidGlassBg,
        ),
        child: LiquidGlass(
          shape: LiquidRoundedSuperellipse(
            borderRadius:32
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(tabs.length, (i) {
                final isSelected = i == selectedIndex;
                return GestureDetector(
                  onTap: () => onTabChanged(i),
                  behavior: HitTestBehavior.opaque,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeInOut,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 6),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? AppColors.cyanColor15
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          tabs[i]['icon'] as IconData,
                          color: isSelected ? AppColors.cyanColor : AppColors.white54,
                          size: 24,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          tabs[i]['label'] as String,
                          style: TextStyle(
                            color: isSelected ?AppColors.cyanColor: AppColors.white54,
                            fontSize: 11,
                            fontWeight: isSelected
                                ? FontWeight.w600
                                : FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}