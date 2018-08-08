-- =============================================
-- Author:		HF
-- Create date: 2/6/18
-- Description:	What would Lou say?
-- Samples: 
-- exec uspSweetLou @yell=0, @justsayno='yes'
-- exec uspSweetLou @yell=0
-- exec uspSweetLou 
-- =============================================
create   proc uspSweetLou
	@YELL int = 1,
	@JustSayNo varchar(3) = 'No'
as

if @yell<>1
begin

	set nocount on;

	if @JustSayNo<>'No'
	begin 
		select 'It''s gonna take at least 2 weeks.'
	end
	else select 'NO!'
	
end
else 
	select 'HOW MANY TIMES AM I GONNA TELL YOU PEOPLE!'
