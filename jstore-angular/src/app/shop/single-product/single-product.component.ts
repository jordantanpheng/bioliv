import { Subscription } from 'rxjs';
import { environment } from './../../../environments/environment';
import { Products } from './../../model/products';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { ProductsService } from '../../services/products.service';
import { CartService } from '../../services/cart.service';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

@Component({
  selector: 'app-single-product',
  templateUrl: './single-product.component.html',
  styleUrls: ['./single-product.component.css']
})

export class SingleProductComponent implements OnInit {

  product: Products;
  prefUrlImage = `${environment.prefUrlImage}`;
  productSub: Subscription;
  quantityForm: FormGroup;

  constructor(private route: ActivatedRoute,
              private prodService: ProductsService,
              private cartService: CartService,
              private fb: FormBuilder) { }

  ngOnInit(): void {
    window.scrollTo(0,0);
    const id = +this.route.snapshot.params["id"];
    this.initQuantityForm();

    this.productSub = this.prodService.prodSubject.subscribe(
      (data: Products[])=>{
        this.product = this.prodService.getProductById(id);
      }
    );
    this.prodService.emitProducts();

  }

  initQuantityForm(): void{
    this.quantityForm = this.fb.group({
      quantity: this.fb.control('', [ Validators.required]),
    });
  }

  addCart(product: Products): void{
    const quantity = this.quantityForm.get('quantity').value;
    if (quantity < 1) {
      this.cartService.addProductToCard(product);
    }
    for (let i = 0; i < quantity; i++) {
      this.cartService.addProductToCard(product);
    }
  }

}
