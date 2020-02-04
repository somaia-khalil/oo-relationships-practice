class Trainer 
    @@all = []
    attr_reader :name
    def initialize (name)
        @name = name
        @@all << self 
    end 
    def self.all
        @@all 
    end
    def customers
        # all customers that this istance "trainer" has
        Customer.all.select do |customer| 
            customer.trainer == self
        end
    end 
    # def customers_count
    #     # all customers count that this istance "trainer" has
    #     Customer.all.select do |customer| 
    #         customer.trainer == self
    #     end.count
    # end
    def self.most_clients
        # should find which trainer has the most clients. give that trainer a bonus!
        self.all.max do |a,b|
            # a.customers_count <=> b.customers_count
            a.customers.count <=> b.customers.count
        end 
    end
end 