import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:stylish/core/widgets/custom_app_bar.dart';
import 'package:stylish/features/home_screen/presentation/manager/home_products_cubit/cubit/home_products_cubit.dart';
import 'package:stylish/features/home_screen/presentation/screens/product_screen.dart';
import 'package:stylish/features/home_screen/presentation/widgets/all_featured_widget.dart';
import 'package:stylish/features/home_screen/presentation/widgets/product_card.dart';
import 'package:stylish/features/home_screen/presentation/widgets/search_textfield.dart';

class TrendingProductsScreen extends StatelessWidget {
  const TrendingProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        backgroundColor: Color(0xffF9F9F9),
        shadowColor: Color(0xffF9F9F9),
        surfaceTintColor: Color(0xffF9F9F9),
        title: CustomAppBar(),
      ),
      body: BlocBuilder<HomeProductsCubit, HomeProductsCubitState>(
        builder: (context, state) {
          if(state is HomeProductsCubitLoading){
            return const Center(child: CircularProgressIndicator(),);
          }else if (state is HomeProductsCubitSuccess){
            return SingleChildScrollView(
              child: Column(
                children: [
                  Gap(10),
                  SearchTextfield(),
                  const Gap(10),
                  AllFeaturedWidget(),
                  Gap(10),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio:0.75, 
                      //to give the grid items proper proportions and prevent layout conflicts.
                    ),
                    padding: EdgeInsets.all(10),
                    itemCount: state.products.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap:(){
                          Navigator.push(context,
                          MaterialPageRoute(builder:(context)=>ProductScreen(productEntity: state.products[index],)));
                        },
                        child: ProductCard(productEntity: state.products[index]));
                    },
                  ),
                ],
              ),
            );} else if (state is HomeProductsCubitFailure) {
              return Center(child: Text(state.errMessage));
            }
            return const Center(child: Text('Press to load products'));
          },
      
      ),
    );
  }
}
