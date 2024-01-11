object UniFormControlsSyntaxEdit: TUniFormControlsSyntaxEdit
  Left = 0
  Top = 0
  Width = 901
  Height = 600
  TabOrder = 0
  ParentRTL = False
  object UniContainerPanel1: TUniContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 895
    Height = 594
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 414
    object UniPageControl1: TUniPageControl
      Left = 0
      Top = 0
      Width = 895
      Height = 594
      Hint = ''
      ActivePage = UniTabSheet1
      Align = alClient
      TabOrder = 1
      ExplicitHeight = 414
      object UniTabSheet1: TUniTabSheet
        Hint = ''
        Caption = 'Pascal'
        ExplicitHeight = 386
        object UniSyntaxEdit1: TUniSyntaxEdit
          Left = 0
          Top = 0
          Width = 887
          Height = 566
          Hint = ''
          Lines.Strings = (
            '{Code From http://sandbox.mc.edu}'
            ''
            
              '(***************************************************************' +
              '**************'
            
              ' * A simple bubble sort program.  Reads integers, one per line, ' +
              'and prints   *'
            
              ' * them out in sorted order.  Blows up if there are more than 49' +
              '.            *'
            
              ' ***************************************************************' +
              '**************)'
            'Program Sort(input, output);'
            '    const'
            '        (* Max array size. *)'
            '        MaxElts = 50;'
            '    type '
            '        (* Type of the element array. *)'
            '        IntArrType = array [1..MaxElts] of integer;'
            ''
            '    var'
            '        (* Indexes, exchange temp, array size. *)'
            '        i, j, tmp, size: integer;'
            ''
            '        (* Array of ints *)'
            '        arr: IntArrType;'
            ''
            '    (* Read in the integers. *)'
            '    procedure ReadArr(var size: integer; var  a: IntArrType);'
            '        begin'
            '            size := 1;'
            '            while not eof do begin'
            '                ReadLn(a[size]);'
            '                if  not eof then '
            '                    size := size + 1'
            '            end'
            '        end;'
            ''
            '    begin'
            '        (* Read *)'
            '        ReadArr(size, arr);'
            ''
            '        (* Sort using bubble sort. *)'
            '        for  i := size - 1 downto 1 do'
            '            for j := 1 to i do '
            '                if arr[j] > arr[j + 1] then begin'
            '                    tmp := arr[j];'
            '                    arr[j] := arr[j + 1];'
            '                    arr[j + 1] := tmp;'
            '                end;'
            ''
            '        (* Print. *)'
            '        for i := 1 to size do'
            '            WriteLn(arr[i])'
            '    end.'
            '            ')
          Font.Height = -13
          Font.Name = 'Courier New'
          Align = alClient
          ExplicitHeight = 386
        end
      end
      object UniTabSheet2: TUniTabSheet
        Hint = ''
        Caption = 'JavaScript'
        ExplicitHeight = 386
        object UniSyntaxEdit2: TUniSyntaxEdit
          Left = 0
          Top = 0
          Width = 887
          Height = 566
          Hint = ''
          Lines.Strings = (
            '// Code From http://www.codecodex.com '
            '// GLOBAL FUNCTION'
            'Array.prototype.bubble_sort = function() {'
            '    var i, j;'
            '    var swapped;'
            '    var newarray = this.slice(0);'
            '    var swap = function(j, k) {'
            '      var temp = newarray[j];'
            '      newarray[j] = newarray[k];'
            '      newarray[k] = temp;'
            '      return(true);'
            '    }'
            '    for(i=1; i<newarray.length; i++) {'
            '      swapped = false;'
            '      for(j=0; j<newarray.length - i; j++) {'
            '        if (newarray[j+1] < newarray[j]) {'
            '          swapped = swap(j, j+1);'
            '        }'
            '      }'
            '      if (!swapped) break;'
            '    }'
            '    return(newarray)'
            '}'
            ''
            '// LOCAL FUNCTION'
            'show = function (inarray, title) {'
            '  document.writeln("<h4>"+title+":</h4>");'
            '  document.writeln(inarray.join(", ")+"<br />");'
            '} ')
          Language = 'JavaScript'
          Font.Height = -13
          Font.Name = 'Courier New'
          Align = alClient
          ExplicitHeight = 386
        end
      end
      object UniTabSheet3: TUniTabSheet
        Hint = ''
        Caption = 'CSharp'
        ExplicitHeight = 386
        object UniSyntaxEdit3: TUniSyntaxEdit
          Left = 0
          Top = 0
          Width = 887
          Height = 566
          Hint = ''
          Lines.Strings = (
            '   // Code From http://www.codecodex.com'
            '    static void BubbleSort(IComparable[] array)  '
            '    {  '
            '        int i, j;  '
            '        IComparable temp;  '
            '        for (i = array.Length - 1; i > 0; i--)  '
            '        {  '
            '            for (j = 0; j < i; j++)  '
            '            {  '
            '                if (array[j].CompareTo(array[j + 1]) > 0)  '
            '                {  '
            '                    temp = array[j];  '
            '                    array[j] = array[j + 1];  '
            '                    array[j + 1] = temp;  '
            '                }  '
            '            }  '
            '        }  '
            '    }  ')
          Language = 'C#'
          Font.Height = -13
          Font.Name = 'Courier New'
          Align = alClient
          ExplicitHeight = 386
        end
      end
      object UniTabSheet4: TUniTabSheet
        Hint = ''
        Caption = 'HTML'
        ExplicitHeight = 386
        object UniSyntaxEdit4: TUniSyntaxEdit
          Left = 0
          Top = 0
          Width = 887
          Height = 566
          Hint = ''
          Lines.Strings = (
            '<script type="text/javascript">'
            'function removeOption()'
            '{'
            'var x=document.getElementById("mySelect");'
            'x.remove(x.selectedIndex);'
            '}'
            '</script>'
            ''
            '<select id="mySelect">'
            '  <option>Apple</option>'
            '  <option>Pear</option>'
            '  <option>Banana</option>'
            '  <option>Orange</option>'
            '</select>'
            
              '<input type="button" onclick="removeOption()" value="Remove sele' +
              'cted option">'
            ''
            '<br><br><br>'
            ''
            '<script type="text/javascript">'
            'function changeBorder()'
            '{'
            'document.getElementById('#39'myTable'#39').border="10";'
            '}'
            '</script>'
            ''
            '<table border="1" id="myTable">'
            '<tr>'
            '<td>100</td>'
            '<td>200</td>'
            '</tr>'
            '<tr>'
            '<td>300</td>'
            '<td>400</td>'
            '</tr>'
            '</table>'
            '<br />'
            
              '<input type="button" onclick="changeBorder()" value="Change Bord' +
              'er">'
            ''
            '<br><br><br>'
            
              '<a href='#39'http://www.w3schools.com/'#39' target='#39'new'#39'>Code samples ta' +
              'ken from W3Schools</a>')
          Language = 'HTML'
          Font.Height = -13
          Font.Name = 'Courier New'
          Align = alClient
          ExplicitHeight = 386
        end
      end
      object UniTabSheet5: TUniTabSheet
        Hint = ''
        Caption = 'CSS'
        ExplicitHeight = 386
        object UniSyntaxEdit5: TUniSyntaxEdit
          Left = 0
          Top = 0
          Width = 887
          Height = 566
          Hint = ''
          Lines.Strings = (
            ' /* Code From http://www.w3schools.com/css/demo_default.htm */'
            'body {'
            '    font: 100%/26px Lucida Sans;'
            '    margin: 20px;'
            '}'
            '.container {'
            '    min-width: 900px;'
            '}'
            '.wrapper {'
            '    overflow: auto;'
            '    position: relative;'
            '}'
            '#top, #sidebar, #bottom, .menuitem {'
            '    border-radius: 4px;'
            '    margin: 4px;'
            '}'
            '#top {'
            '    background-color: #84c754;'
            '    color: #ffffff;'
            '    padding: 15px;'
            '}'
            '#menubar {'
            '    float: left;'
            '    width: 200px;'
            '}'
            '#main {'
            '    margin: 0 210px;'
            '    padding: 10px;'
            '}'
            '#sidebar {'
            '    background-color: #32a4e7;'
            '    bottom: 0;'
            '    color: #ffffff;'
            '    padding: 10px;'
            '    position: absolute;'
            '    right: 0;'
            '    top: 0;'
            '    width: 180px;'
            '}'
            '#bottom {'
            '    background-color: #f1f1f1;'
            '    border: 1px solid #d4d4d4;'
            '    font-size: 70%;'
            '    line-height: 14px;'
            '    padding: 10px;'
            '    text-align: center;'
            '}'
            '#top h1, #top p, #menulist {'
            '    margin: 0;'
            '    padding: 0;'
            '}'
            '.menuitem {'
            '    background-color: #f1f1f1;'
            '    border: 1px solid #d4d4d4;'
            '    cursor: pointer;'
            '    list-style-type: none;'
            '    padding: 2px;'
            '}'
            '.menuitem:hover {'
            '    background-color: #ffffff;'
            '}'
            'a {'
            '    color: #000000;'
            '    text-decoration: underline;'
            '}'
            'a:hover {'
            '    text-decoration: none;'
            '}')
          Language = 'CSS'
          Font.Height = -13
          Font.Name = 'Courier New'
          Align = alClient
          ExplicitHeight = 386
        end
      end
      object UniTabSheet9: TUniTabSheet
        Hint = ''
        Caption = 'SQL'
        ExplicitHeight = 386
        object UniSyntaxEdit9: TUniSyntaxEdit
          Left = 0
          Top = 0
          Width = 887
          Height = 566
          Hint = ''
          Lines.Strings = (
            'SELECT * FROM SOMETABLE WHERE SOMECOLUMN = '#39'Something'#39)
          Language = 'SQL'
          Font.Height = -13
          Font.Name = 'Courier New'
          Align = alClient
          ExplicitHeight = 386
        end
      end
      object UniTabSheet10: TUniTabSheet
        Hint = ''
        Caption = 'PHP'
        ExplicitHeight = 386
        object UniSyntaxEdit10: TUniSyntaxEdit
          Left = 0
          Top = 0
          Width = 887
          Height = 566
          Hint = ''
          Lines.Strings = (
            '    <?php'
            '    /**'
            '     * Sample File 2, phpDocumentor Quickstart'
            '     * '
            
              '     * This file demonstrates the rich information that can be i' +
              'ncluded in'
            '     * in-code documentation through DocBlocks and tags.'
            '     * @author Greg Beaver <cellog@php.net>'
            '     * @version 1.0'
            '     * @package sample'
            '     */'
            '    // sample file #1'
            '    /**'
            
              '     * Dummy include value, to demonstrate the parsing power of ' +
              'phpDocumentor'
            '     */'
            '    include_once '#39'sample3.php'#39';'
            '     '
            '    /**'
            '     * Special global variable declaration DocBlock'
            '     * @global integer $GLOBALS['#39'_myvar'#39'] '
            '     * @name $_myvar'
            '     */ '
            '    $GLOBALS['#39'_myvar'#39'] = 6;'
            '     '
            '    /**#@+'
            '     * Constants'
            '     */'
            '    /**'
            '     * first constant'
            '     */'
            '    define('#39'testing'#39', 6);'
            '    /**'
            '     * second constant'
            '     */'
            '    define('#39'anotherconstant'#39', strlen('#39'hello'#39'));'
            '     '
            '    /**'
            '     * A sample function docblock'
            
              '     * @global string document the fact that this function uses ' +
              '$_myvar'
            
              '     * @staticvar integer $staticvar this is actually what is re' +
              'turned'
            '     * @param string $param1 name to declare'
            '     * @param string $param2 value of the name'
            '     * @return integer '
            '     */'
            '    function firstFunc($param1, $param2 = '#39'optional'#39')'
            '    {'
            '        static $staticvar = 7;'
            '        global $_myvar;'
            '        return $staticvar;'
            '    }'
            '     '
            '    /**'
            
              '     * The first example class, this is in the same package as t' +
              'he'
            '     * procedural stuff in the start of the file'
            '     * @package sample'
            '     * @subpackage classes'
            '     */'
            '    class myclass {'
            '        /**'
            
              '         * A sample private variable, this can be hidden with th' +
              'e --parseprivate'
            '         * option'
            '         * @access private'
            '         * @var integer|string'
            '         */'
            '        var $firstvar = 6;'
            '        /**'
            '         * @link http://www.example.com Example link'
            '         * @see myclass()'
            '         * @uses testing, anotherconstant'
            '         * @var array '
            '         */'
            '        var $secondvar ='
            '            array('
            '                '#39'stuff'#39' =>'
            '                    array('
            '                        6,'
            '                        17,'
            '                        '#39'armadillo'#39
            '                    ),'
            '                testing => anotherconstant'
            '            );'
            '     '
            '        /**'
            '         * Constructor sets up {@link $firstvar}'
            '         */'
            '        function myclass()'
            '        {'
            '            $this->firstvar = 7;'
            '        }'
            '        '
            '        /**'
            '         * Return a thingie based on $paramie'
            '         * @param boolean $paramie '
            '         * @return integer|babyclass'
            '         */'
            '        function parentfunc($paramie)'
            '        {'
            '            if ($paramie) {'
            '                return 6;'
            '            } else {'
            '                return new babyclass;'
            '            }'
            '        }'
            '    }'
            '     '
            '    /**'
            '     * @package sample1'
            '     */'
            '    class babyclass extends myclass {'
            '        /**'
            '         * The answer to Life, the Universe and Everything'
            '         * @var integer '
            '         */'
            '        var $secondvar = 42;'
            '        /**'
            '         * Configuration values'
            '         * @var array '
            '         */'
            '        var $thirdvar;'
            '        '
            '        /**'
            
              '         * Calls parent constructor, then increments {@link $fir' +
              'stvar}'
            '         */'
            '        function babyclass()'
            '        {'
            '            parent::myclass();'
            '            $this->firstvar++;'
            '        }'
            '        '
            '        /**'
            '         * This always returns a myclass'
            '         * @param ignored $paramie '
            '         * @return myclass '
            '         */'
            '        function parentfunc($paramie)'
            '        {'
            '            return new myclass;'
            '        }'
            '    }'
            '    ?>')
          Language = 'PHP'
          Font.Height = -13
          Font.Name = 'Courier New'
          Align = alClient
          ExplicitHeight = 386
        end
      end
      object UniTabSheet11: TUniTabSheet
        Hint = ''
        Caption = 'XML'
        ExplicitHeight = 386
        object UniSyntaxEdit11: TUniSyntaxEdit
          Left = 0
          Top = 0
          Width = 887
          Height = 566
          Hint = ''
          Lines.Strings = (
            ''
            ' <?xml version="1.0" encoding="UTF-8"?>'
            '<note>'
            '  <to> Tove</to>'
            '  <from>Jani</from>'
            '  <heading>Reminder</heading>'
            '  <body>Don'#39't forget me this weekend!</body>'
            '  <code>Code From http://www.w3schools.com</code>'
            '</note>')
          Language = 'XML'
          Font.Height = -13
          Font.Name = 'Courier New'
          Align = alClient
          ExplicitHeight = 386
        end
      end
    end
  end
end
