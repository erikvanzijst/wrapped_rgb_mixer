always @(*) begin
    if(active) begin
        // active properties here
        _out16oe_: assert(io_out[16] == buf_io_out[16]);
        _out15oe_: assert(io_out[15] == buf_io_out[15]);
        _out14oe_: assert(io_out[14] == buf_io_out[14]);
        _iooeboe_: assert(!io_oeb);
        _ladataoutoe_: assert(la_data_out[0] == buf_la_data_out[0]);
        _ackoe_: assert(wbs_ack_o == buf_wbs_ack_o);
        _datoe_: assert(wbs_dat_o == buf_wbs_dat_o);
    end

    if(!active) begin
        // inactive properties here
        // _iooeb_: assert(io_oeb == 1);
        _out16_: assert(!io_out[16]);
        _out15_: assert(!io_out[15]);
        _out14_: assert(!io_out[14]);
        _ladataout_: assert(!la_data_out[0]);
        _ack_: assert(!wbs_ack_o);
        _dat_: assert(!wbs_dat_o);
    end
end
