class Bill < ActiveRecord::Base
	validates :valor, presence: true, numericality: { only_float: true }
	validates :codigo, presence: true, uniqueness: true, length: { is: 5 }
	validates :dependencia, presence: true, inclusion: { in: %w(ventas produccion), message: "%{value} no corresponde ni a ventas ni a produccon" }
	validates :depositante, presence: true, exclusion: { in: %w(casimiro), message: "%{value} no esta autorizado para hacer depositos" }
    validates :beneficiario, presence: true, inclusion: { in: %w(Luisa Andres Karen), message: "%{value} solo pueden ser Luisa, Andres o Karen" }
    before_create :asignar_fecha

    def asignar_fecha  #me actualiza la fecha al momento de crear el bill
    self.fecha = Time.now
    end
end
