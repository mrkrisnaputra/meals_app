import 'package:flutter/material.dart';
// import 'package:meals/screens/tabs.dart';
// import 'package:meals/widgets/main_drawer.dart';

enum Filter{
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan
}
class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key, required this.currentFilters});
  final Map<Filter,bool> currentFilters;
  @override
  State<FiltersScreen> createState() {
    return _FiltersScreenState();
  }
}



class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFreeFilterSet=false;
var _lactoseFreeFilterSet=false;
var _vegatarianFreeFilterSet=false;
var _veganFreeFilterSet=false;
  @override
  void initState() {

    super.initState();
    _glutenFreeFilterSet=widget.currentFilters[Filter.glutenFree]!;
    _lactoseFreeFilterSet=widget.currentFilters[Filter.lactoseFree]!;
    _vegatarianFreeFilterSet=widget.currentFilters[Filter.vegetarian]!;
    _veganFreeFilterSet=widget.currentFilters[Filter.vegan]!;
    
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: const Text('Your Filter')),
      // drawer: MainDrawer(onSelectScreen: (identifiers){
      //   Navigator.of(context).pop();
      //   if(identifiers=='meals'){
      //     Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> const TabsScreen()));
      //   }
      // }),
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result)  {
          if(didPop) return;
          Navigator.of(context).pop({
            Filter.glutenFree:_glutenFreeFilterSet,
            Filter.lactoseFree:_lactoseFreeFilterSet,
            Filter.vegetarian:_vegatarianFreeFilterSet,
            Filter.vegan:_veganFreeFilterSet
          });            
        },
        child: Column(
          children: [
            SwitchListTile(
              value: _glutenFreeFilterSet, //belumdi rubah
              onChanged: (isChecked){
                setState(() {
                  _glutenFreeFilterSet=isChecked;
                });
              },
              title: Text(
                'Gluten-free',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              subtitle: Text(
                'Only include gluten-free meals.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              // Menggantikan activeColor yang deprecated
              thumbColor: WidgetStateProperty.resolveWith<Color?>((states) {
                if (states.contains(WidgetState.selected)) {
                  return Theme.of(context).colorScheme.tertiary;
                }
                return null; // Gunakan warna default saat tidak terpilih
              }),
              trackColor: WidgetStateProperty.resolveWith<Color?>((states) {
                if (states.contains(WidgetState.selected)) {
                  // Menggunakan withAlpha agar warna track lebih soft dibanding thumb
                  return Theme.of(context).colorScheme.tertiary.withAlpha(120);
                }
                return null;
              }),
              contentPadding: const EdgeInsets.only(left: 34,right: 22),
            ),
            SwitchListTile(
              value: _lactoseFreeFilterSet, //belumdi rubah
              onChanged: (isChecked){
                setState(() {
                  _lactoseFreeFilterSet=isChecked;
                });
              },
              title: Text(
                'Lactose-free',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              subtitle: Text(
                'Only include lactore-free meals.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              // Menggantikan activeColor yang deprecated
              thumbColor: WidgetStateProperty.resolveWith<Color?>((states) {
                if (states.contains(WidgetState.selected)) {
                  return Theme.of(context).colorScheme.tertiary;
                }
                return null; // Gunakan warna default saat tidak terpilih
              }),
              trackColor: WidgetStateProperty.resolveWith<Color?>((states) {
                if (states.contains(WidgetState.selected)) {
                  // Menggunakan withAlpha agar warna track lebih soft dibanding thumb
                  return Theme.of(context).colorScheme.tertiary.withAlpha(120);
                }
                return null;
              }),
              contentPadding: const EdgeInsets.only(left: 34,right: 22),
            ),
            SwitchListTile(
              value: _vegatarianFreeFilterSet, //belumdi rubah
              onChanged: (isChecked){
                setState(() {
                  _vegatarianFreeFilterSet=isChecked;
                });
              },
              title: Text(
                'Vegetarian',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              subtitle: Text(
                'Only include vegetarian meals.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              // Menggantikan activeColor yang deprecated
              thumbColor: WidgetStateProperty.resolveWith<Color?>((states) {
                if (states.contains(WidgetState.selected)) {
                  return Theme.of(context).colorScheme.tertiary;
                }
                return null; // Gunakan warna default saat tidak terpilih
              }),
              trackColor: WidgetStateProperty.resolveWith<Color?>((states) {
                if (states.contains(WidgetState.selected)) {
                  // Menggunakan withAlpha agar warna track lebih soft dibanding thumb
                  return Theme.of(context).colorScheme.tertiary.withAlpha(120);
                }
                return null;
              }),
              contentPadding: const EdgeInsets.only(left: 34,right: 22),
            ),
            SwitchListTile(
              value: _veganFreeFilterSet, //belumdi rubah
              onChanged: (isChecked){
                setState(() {
                  _veganFreeFilterSet=isChecked;
                });
              },
              title: Text(
                'Vegan',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              subtitle: Text(
                'Only include Vegan meals.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              // Menggantikan activeColor yang deprecated
              thumbColor: WidgetStateProperty.resolveWith<Color?>((states) {
                if (states.contains(WidgetState.selected)) {
                  return Theme.of(context).colorScheme.tertiary;
                }
                return null; // Gunakan warna default saat tidak terpilih
              }),
              trackColor: WidgetStateProperty.resolveWith<Color?>((states) {
                if (states.contains(WidgetState.selected)) {
                  // Menggunakan withAlpha agar warna track lebih soft dibanding thumb
                  return Theme.of(context).colorScheme.tertiary.withAlpha(120);
                }
                return null;
              }),
              contentPadding: const EdgeInsets.only(left: 34,right: 22),
            ),
          ],
        ),
      ),
    );
  }
}
