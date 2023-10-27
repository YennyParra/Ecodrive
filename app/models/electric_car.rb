class ElectricCar < ApplicationRecord
   # before_action :authenticate_user!

    belongs_to :user
    has_and_belongs_to_many :features
    has_many :comments
    validates :model, presence: true, uniqueness: true
    validates :brand, presence: true
    validates :manufacture_year, presence: true
    validates :driving_range, presence: true
    validates :rental_price, presence: true

    enum brand: [:tesla, :nissan, :chevrolet, :bmw, :audi, :hyundai, :kia, :ford, :porsche, :volkswagen]
    enum features: [:bateria_iones_litio, :bateria_estado_solido, :sistema_carga_inalambrica, :sistema_carga_alambrica, :tecnologia_asistencia_conduccion ]
end
