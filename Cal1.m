function [] = Cal1()
    
    close all;
    global aa;
    aa.numBox1 = 0;
    aa.numBox2 = 0;
    aa.solution = 0;
    aa.fig = figure('numbertitle','off','name','Calculator');
    
    
    aa.input1 = uicontrol('style','text','units','normalized','position',[.20 .780 .3 0.1],'string',num2str(aa.numBox1),'horizontalalignment','left','fontsize',20); 
    aa.input1str = uicontrol('style','text','units','normalized','position',[.20 .90 .3 0.05],'string','INPUT1:','horizontalalignment','left','fontsize',15); 
    aa.input2 = uicontrol('style','text','units','normalized','position',[.60 .780 .3 0.1],'string',num2str(aa.numBox2),'horizontalalignment','left','fontsize',20);
    aa.input2str = uicontrol('style','text','units','normalized','position',[.60 .90 .3 0.05],'string','INPUT2:','horizontalalignment','left','fontsize',15); 
    aa.output = uicontrol('style','text','units','normalized','position',[.10 .05 .5 0.1],'string',num2str(aa.solution),'horizontalalignment','left','fontsize',20);
    aa.outputstr = uicontrol('style','text','units','normalized','position',[.10 .15 .3 0.05],'string','SOLUTION:','horizontalalignment','left','fontsize',15); 
    
    
    aa.one = uicontrol('style','pushbutton','units','normalized','position',[.10 .640 .10 .10],'string','1','callback', {@numInput,1});
    aa.two = uicontrol('style','pushbutton','units','normalized','position',[.25 .640 .10 .10],'string','2','callback', {@numInput,2});
    aa.three = uicontrol('style','pushbutton','units','normalized','position',[.40 .640 .10 .10],'string','3','callback', {@numInput,3});
    
    aa.four = uicontrol('style','pushbutton','units','normalized','position',[.10 .51 .10 .10],'string','4','callback', {@numInput,4});
    aa.five = uicontrol('style','pushbutton','units','normalized','position',[.25 .51 .10 .10],'string','5','callback', {@numInput,5});
    aa.six = uicontrol('style','pushbutton','units','normalized','position',[.40 .51 .10 .10],'string','6','callback', {@numInput,6});
    
    aa.seven = uicontrol('style','pushbutton','units','normalized','position',[.10 .38 .10 .10],'string','7','callback', {@numInput,7});
    aa.eight = uicontrol('style','pushbutton','units','normalized','position',[.25 .38 .10 .10],'string','8','callback', {@numInput,8});
    aa.nine = uicontrol('style','pushbutton','units','normalized','position',[.40 .38 .10 .10],'string','9','callback', {@numInput,9});
    
    aa.dot = uicontrol('style','pushbutton','units','normalized','position',[.10 .25 .10 .10],'string','.','callback', {@numInput,'.'});
    aa.zero = uicontrol('style','pushbutton','units','normalized','position',[.250 .25 .10 .10],'string','0','callback', {@numInput,0});
    
    aa.add = uicontrol('style','pushbutton','units','normalized','position',[.550 .64 .10 .10],'string','+','callback', {@add});
    aa.subtract = uicontrol('style','pushbutton','units','normalized','position',[.550 .510 .10 .10],'string','-','callback', {@subtract});
    aa.multiply = uicontrol('style','pushbutton','units','normalized','position',[.550 .380 .10 .10],'string','*','callback', {@multiply});
    aa.divide = uicontrol('style','pushbutton','units','normalized','position',[.550 .250 .10 .10],'string','/','callback', {@divide});
    aa.clear = uicontrol('style','pushbutton','units','normalized','position',[.40 .25 .10 .10],'string','C','callback', {@clear,0});
     
    aa.switch = uicontrol('style','radio','units','normalized','position',[.60 .05 .50 .10],'string','Switch Between Input','horizontalalignment','left','fontsize',15,'callback', {@radio});
end

function [] = radio(source,element)
    
end
function [] = numInput(source,element,num)
    global aa;
    if aa.number == 0
        aa.number = num;
    else
        aa.number = strcat(num2str(aa.numBox1), num2str(num));
    end
    aa.intput1.String = num2str(aa.numBox1);   
    
end

function[] = clear(source,elementn,c)
    global aa;
    Cal1();  
end

function [] = add(source,element)
   
        
end

function [] = subtract(source,element)
    
        
end

function [] = multiply(source,element)
   
        
end

function [] = divide(source,element)
   
        
end


