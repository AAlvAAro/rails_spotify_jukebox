module ApplicationHelper
	def format_datetime(datetime)
		datetime.in_time_zone('America/Mexico_City').strftime("%d/%m/%Y %H:%M")
	end
end
