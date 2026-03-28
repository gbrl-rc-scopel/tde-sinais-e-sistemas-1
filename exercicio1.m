
function y = minha_conv(s1, s2)
    
    len_s1 = length(s1); % calcula o tamanho dos sinais de entrada
    len_s2 = length(s2);
    len_res = len_s1 + len_s2 - 1;
    
    res = [zeros(1, len_res)]; % inicialização do vetor da resposta

    for i = 1:len_res
        for j = 1:len_s1 
           if ((i-j+1) >= 1) && ((i-j+1) <= len_s2) % o if é necessário pra limitar quando o vetor pode ser acessado
               aux = s1(j) * s2(i-j+1); % x(tal)*h(t-tal)
               res(i) = res(i) + aux; % vai somando (integrando) cada operação que é feita
           end
        end
    end
    y = res; %retorno da função
end
