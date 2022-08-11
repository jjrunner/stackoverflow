class Guess_Number:
    	
	def __init__(self, min=0, max=100):
	
		""" Generic distribution class for calculating and 
		visualizing a probability distribution.
	
		Attributes:
			mean (float) representing the mean value of the distribution
			stdev (float) representing the standard deviation of the distribution
			data_list (list of floats) a list of floats extracted from the data file
		"""
		
		self.min = min
		self.max = max
		self.data = []
        self.target = None

    def update_min(self, new_min):
        if new_min>self.max:
            print("The new min is bigger than the current max, try to reset the range")
            return
        self.min = new_min
        return 

    def update_max(self, new_max):
        if new_max<self.min:
            print("The new max is smaller than the current min, try to reset the range")
            return
        self.max = new_max
    
    def check_range(self):


    def guess_number(self, num):
        """
        Fuction to pick up the guessed number

        Args:
            num: input of a interger between min and max
        
        Results:
            update the data component, returns nothing
        """
        try:
            int(num)
            new_num = int(num)
        else:
            print("The input is not an integer")
            return
        
        if new_num<=self.max and new_num>=self.min
