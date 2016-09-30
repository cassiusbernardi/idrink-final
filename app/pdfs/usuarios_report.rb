class UsuariosReport < Prawn::Document
	def initialize(useres)
		super()
		@valortotal = 0
		@useres = useres
		header
		text_content
		table_content
		sumary
	end
	
	def header
		#This inserts an image in the pdf file and sets the size of the image
		image "#{Rails.root}/app/assets/images/header.png", width: 530, height: 100
	end
	
	def text_content
		y_position = cursor - 50
		
		# The bounding_box takes the x and y coordinates for positioning its content and some options to style it
		bounding_box([0, y_position], :width => 540, :height => 50) do
			text "Listagem de Usuarios", size: 15, style: :bold
			#text " ", size: 12, style: :bold
		end
	end
	
	def table_content
		table usuario_rows do
			row(0).font_style = :bold
			self.header = true
			self.row_colors = ['DDDDDD', 'FFFFFF']
			self.column_widths = [90,200, 200, 50]
		end
	end
	
	def usuario_rows
		[['Tipo','Nome', 'Email']] +
		@useres.map do |user|
			[user.tipo,user.name,user.email]
		end
	end

	def sumary
		#@useres.each do |user|
		#	@valortotal = @valortotal + user.valorunit
		#end
		#y_position = cursor - 50
		#bounding_box([0, y_position], :width => 540, :height => 50) do
			#text "Valor Total: #{@valortotal} ", size: 15, style: :bold
		end
	end
end