DeclareInt = "wilint"
DeclareStr = "wilstr"
DeclareFloat = "wilfl"
DeclareBool = "wilbool"

If = "if"
Else = "else"
End = "fiend"


f = File.readlines("jean.wf")
i = 0
while i < f.length
        lex_line = f[i].split(' ')
        if lex_line[0] == DeclareInt
            if lex_line[2] == "="
                    instance_variable_set("@#{lex_line[1]}", lex_line[3])
                    lex_line[1] = "@#{lex_line[1]}"
            else
                    puts "to assign value '='"
            end
        elsif lex_line[0] == DeclareStr
                if lex_line[2] == "="
                        last_arr = lex_line.drop(3)
                        str = "#{last_arr.join(' ')}".delete_prefix('"').delete_suffix('"')
                        instance_variable_set("@#{lex_line[1]}", str)
                else
                    puts "to assign value '='"
                end
        elsif lex_line[0] == DeclareFloat
                if lex_line[2] == "="
                    instance_variable_set("@#{lex_line[1]}", lex_line[3])
                    lex_line[1] = "@#{lex_line[1]}"
                else
                    puts "to assign value '='"
                end
        
        elsif lex_line[0] == DeclareBool
                if lex_line[2] == "="
                    instance_variable_set("@#{lex_line[1]}", lex_line[3])
                    lex_line[1] = "@#{lex_line[1]}"
                else
                    puts "to assign value '='"
                end
        elsif lex_line[0] == If
            puts "lel"
        elsif lex_line[0] == End
            eval("end")
        elsif lex_line[0] == "wilrite"
            puts eval("@#{lex_line[1]}")
        end
        i+=1
end

