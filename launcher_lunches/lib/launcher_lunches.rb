# - Where can I find the most expensize menu item?
# - For each restaurant, how much would it cost to order one of each item?
# - How many eggs should the restaurant manager order to cover all 3
# restaurants for 1 month?
# - What is the list of all lactose free items in ordered by price?

require 'pry'

# restaurant data
def restaurants
  {
    "Sam's Sandwhiches" => {
      hours: 7,
      meals: {
        breakfast: {
          hamncheese: {
            price_in_cents: 499,
            ingredients: ["ham", "cheese", "english muffin"]
          },
          mcwaffle: {
            price_in_cents: 525,
            ingredients: ["waffles", "syrup", "sausage", "cheese"]
          }
        },
        lunch: {
          meatball_rollup: {
            price_in_cents: 709,
            ingredients: ["meatballs", "cheese", "tortilla"]
          },
          fluffer_nutter_with_bacon: {
            price_in_cents: 639,
            ingredients: ["bread", "fluff", "peanutbutter", "bacon"]
          }
        }
      }
    },
    "Adam's Veggie Express" => {
      hours: 9,
      meals: {
        breakfast: {
          asparagus_omlette: {
            price_in_cents: 688,
            ingredients: ["eggs", "cheese", "asparagus"]
          },
          fajita_frittata: {
            price_in_cents: 500,
            ingredients: ["eggs", "green peppers", "red peppers", "yellow peppers", "onions", "cheese"]
          }
        },
        lunch: {
          veggie_surprise_bag: {
            price_in_cents: 925,
            ingredients: ["tomato", "onion", "squash", "other stuff"]
          },
          corn_on_the_cob: {
            price_in_cents: 229,
            ingredients: ["corn"]
          }
        }
      }
    },
    "Eric's Emo Eats" => {
      hours: 3,
      meals: {
        breakfast: {
          sad_cereal: {
            price_in_cents: 277,
            ingredients: ["cereal", "milk"]
          },
          apathetic_eggs: {
            price_in_cents: 320,
            ingredients: ["eggs"]
          }
        },
        lunch: {
          mopey_falafels: {
            price_in_cents: 625,
            ingredients: ["pita", "falafel", "tahini"]
          },
          tearful_tacos: {
            price_in_cents: 719,
            ingredients: ["beef", "taco shells", "cheese", ]
          }
        }
      }
    }
  }
end

def traverse(hash, string)
  arr = []
  hash.each do |k, v|
    if k.to_s.include?(string)
      #binding.pry
      arr << { k => v }
    elsif v.respond_to?(:keys)
      traverse(hash[k],string)
    else
      "nothing"
    end
  end
  arr
end




def most_expensive
  traverse(restaurants, "price")
  binding.pry
end



def one_of_everything_from(name)
  "SOLUTION GOES HERE"
end

def monthly_egg_count
  "SOLUTION GOES HERE"
end

def lactose_free_items
  "SOLUTION GOES HERE"
end

most_expensive
traverse(restaurants, "price")

