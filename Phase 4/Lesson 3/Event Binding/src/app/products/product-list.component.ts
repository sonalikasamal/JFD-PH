import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'product-list',
  templateUrl: './product.component.html',
  styleUrls: ['./product.component.css']
  
})
export class ProductListComponent{
  pageTitle: string = "Product List Page";
  imageWidth:number = 80;
  imageMargin:number = 10;

  showImage:boolean = false;

  toggleImage() : void {
      this.showImage = !this.showImage;
      // (!false = true) // (!true == false)
console.log('Value of ShowImage inside function ::',                              this.showImage);   
  }
}