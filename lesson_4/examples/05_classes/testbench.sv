module testbench;

    class base1;
        bit [7:0] a;
        virtual function void set_show (bit [7:0] i1);
            a = i1;
            $display("base1 : a = %2h", i1);
        endfunction
    endclass

    base1 b1; // Handle

    initial begin
        b1 = new();
        $display(b1); // Implementation-specific
    end

endmodule