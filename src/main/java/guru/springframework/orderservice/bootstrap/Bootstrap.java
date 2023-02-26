package guru.springframework.orderservice.bootstrap;

import guru.springframework.orderservice.domain.Customer;
import guru.springframework.orderservice.domain.OrderHeader;
import guru.springframework.orderservice.repositories.CustomerRepository;
import guru.springframework.orderservice.repositories.OrderHeaderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
public class Bootstrap implements CommandLineRunner {
    @Autowired
    BootstrapOrderService bootstrapOrderService;

    @Autowired
    CustomerRepository customerRepository;

    @Override
    public void run(String... args) throws Exception {
        bootstrapOrderService.readOrderData();

        Customer customer = new Customer();
        customer.setCustomerName("Testing Version");
        Customer savedCustomer = customerRepository.save(customer);

        System.out.println("Version is: " + savedCustomer.getVersion());

        customerRepository.deleteById(savedCustomer.getId());

    }
}
