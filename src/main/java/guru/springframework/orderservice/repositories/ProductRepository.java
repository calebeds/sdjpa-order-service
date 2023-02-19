package guru.springframework.orderservice.repositories;

import guru.springframework.orderservice.domain.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Long> {
    Product findByDescription(String description);
}

