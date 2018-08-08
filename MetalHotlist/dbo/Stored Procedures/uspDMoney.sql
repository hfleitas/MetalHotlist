-- =============================================
-- Author:		HF
-- Create date: 2/20/18
-- Description:	DMoney
-- exec uspDMoney 
-- exec uspDMoney @GetMoney=0
-- =============================================
create   proc uspDMoney
	@GetMoney bit = 1
as

if @GetMoney<>1
begin

	set nocount on;

	select 'Get Money'
	
end
else 
	select 'Do Crossfit'