class Pensamiento < ActiveRecord::Base
 attr_accessible :descripcion  
validates_presence_of :descripcion
end
