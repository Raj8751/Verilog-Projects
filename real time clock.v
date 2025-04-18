
//DESIGN CODE

module rtc (
    input wire clk,                                // 1Hz clock input
    input wire reset,                              // synchronous reset
    output reg [5:0] seconds,                      // 0-59
    output reg [5:0] minutes,                      // 0-59
    output reg [4:0] hours                         // 0-23
);

always @(posedge clk) begin
    if (reset) begin

 // Reset all time values to 00:00:00
        seconds <= 0;
        minutes <= 0;
        hours   <= 0;
    end
    else begin

 // Increment seconds
        if (seconds == 6'd59) begin
            seconds <= 0;

 // Increment minutes
            if (minutes == 6'd59) begin
                minutes <= 0;

  // Increment hours
                if (hours == 5'd23)
                    hours <= 0;
                else
                    hours <= hours + 1;
            end
            else
                minutes <= minutes + 1;
        end
        else
            seconds <= seconds + 1;
    end
end

endmodule

