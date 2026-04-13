for $libro in doc ("biblioteca.xml") 
let $titulo := $libro/titulo
  $precio := $libro/precio
where number $libro/categoria = &#programacion; and $precio >= 30
order by $libro/titulo
return 
<resulado>
  { $titulo }
</resulado>