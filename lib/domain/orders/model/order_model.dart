class OrderRequest {
  final int customerId;
  final double totalPrice;
  final List<OrderProduct> products;

  OrderRequest({
    required this.customerId,
    required this.totalPrice,
    required this.products,
  });

  Map<String, dynamic> toJson() {
    return {
      'customer_id': customerId,
      'total_price': totalPrice,
      'products': products.map((product) => product.toJson()).toList(),
    };
  }
}

class OrderProduct {
  final int productId;
  final int quantity;
  final double price;

  OrderProduct({
    required this.productId,
    required this.quantity,
    required this.price,
  });

  Map<String, dynamic> toJson() {
    return {
      'product_id': productId,
      'quantity': quantity,
      'price': price,
    };
  }
}

class OrderResponse {
  final int errorCode;
  final Map<String, dynamic> data;
  final String message;

  OrderResponse({
    required this.errorCode,
    required this.data,
    required this.message,
  });
  factory OrderResponse.fromJson(Map<String, dynamic> json) {
    return OrderResponse(
      errorCode: json['error_code'] ?? 0,
      data: json['data'] ?? {},
      message: json['message'] ?? '',
    );
  }
}
