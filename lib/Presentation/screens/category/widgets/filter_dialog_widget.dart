import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb/Application/category/category_bloc.dart';
import 'package:glam_garb/Presentation/screens/category/widgets/filter_options.dart';
import 'package:glam_garb/Shared/constants/constants.dart';

class FilterDialog extends StatefulWidget {
  final FilterOptions filterOptions;
  final List<String> colorOptions;
  final List<String> sizeOptions;
  final List<String?> brandOptions;
  final List<String?> categoryOptions;
  final String searchText;
  final String selectedCategory;

  const FilterDialog(
      {super.key,
      required this.colorOptions,
      required this.sizeOptions,
      required this.brandOptions,
      required this.categoryOptions,
      required this.filterOptions,
      required this.searchText,
      required this.selectedCategory});

  @override
  _FilterDialogState createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return AlertDialog(
          title: const Text("Filter Options"),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                buildFilterOption(
                  title: 'Colors:',
                  options: widget.colorOptions,
                  selectedOptions: widget.filterOptions.selectedColors,
                ),
                // buildFilterOption(
                //   title: 'Sizes:',
                //   options: widget.sizeOptions,
                //   selectedOptions: widget.filterOptions.selectedSizes,
                // ),
                buildFilterOption(
                  title: 'Categories:',
                  options: widget.categoryOptions,
                  selectedOptions: widget.filterOptions.selectedCategories,
                ),
                buildFilterOption(
                  title: 'Brands:',
                  options: widget.brandOptions,
                  selectedOptions: widget.filterOptions.selectedBrands,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            BlocConsumer<CategoryBloc, CategoryState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                return TextButton(
                  onPressed: () {
                    print(widget.filterOptions.selectedColors);
                    if (widget.selectedCategory == 'all') {
                      context.read<CategoryBloc>().add(
                          CategoryEvent.getAllCategory(
                              widget.searchText,
                              widget.filterOptions.selectedColors,
                              widget.filterOptions.selectedSizes,
                              widget.filterOptions.selectedCategories,
                              widget.filterOptions.selectedBrands));
                    } else if (widget.selectedCategory == 'men') {
                      context.read<CategoryBloc>().add(
                          CategoryEvent.getMenCategory(
                              widget.searchText,
                              widget.filterOptions.selectedColors,
                              widget.filterOptions.selectedSizes,
                              widget.filterOptions.selectedCategories,
                              widget.filterOptions.selectedBrands));
                    } else {
                      context.read<CategoryBloc>().add(
                          CategoryEvent.getWomenCategory(
                              widget.searchText,
                              widget.filterOptions.selectedColors,
                              widget.filterOptions.selectedSizes,
                              widget.filterOptions.selectedCategories,
                              widget.filterOptions.selectedBrands));
                    }
                    Navigator.of(context).pop();
                  },
                  child: const Text('Apply'),
                );
              },
            ),
          ],
        );
      },
    );
  }

  Widget buildFilterOption({
    required String title,
    required List<dynamic> options,
    required List<String> selectedOptions,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: textstyle4,
        ),
        const SizedBox(height: 8),
        Column(
          children: options.map((option) {
            return CheckboxListTile(
              title: Text(
                option,
              ),
              value: selectedOptions.contains(option),
              onChanged: (value) {
                setState(() {
                  if (value != null) {
                    if (value) {
                      selectedOptions.add(option);
                    } else {
                      selectedOptions.remove(option);
                    }
                  }
                });
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
