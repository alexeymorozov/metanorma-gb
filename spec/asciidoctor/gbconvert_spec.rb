require "spec_helper"

RSpec.describe Asciidoctor::Gb::GbConvert do
  it "processes IsoXML bibliographies" do
    expect(Asciidoctor::Gb::GbConvert.new({}).convert_file(<<~"INPUT", "test", true)).to be_equivalent_to <<~"OUTPUT"
            <gb-standard xmlns="http://riboseinc.com/gbstandard">
    <preface><foreword>
  <p id="_f06fd0d1-a203-4f3d-a515-0bdba0f8d83f">
  <eref bibitemid="ISO712"/>
  <eref bibitemid="ref1"/>
  <eref bibitemid="ref10"/>
  </p>
    </foreword></preface>
    <bibliography><references id="_normative_references" obligation="informative"><title>Normative References</title>
<bibitem id="ISO712" type="standard">
  <title format="text/plain">Cereals and cereal products</title>
  <docidentifier>ISO 712</docidentifier>
  <contributor>
    <role type="publisher"/>
    <organization>
      <name>International Organization for Standardization</name>
    </organization>
  </contributor>
</bibitem>
<bibitem id="ISO16634" type="standard">
  <title format="text/plain">Cereals, pulses, milled cereal products, oilseeds and animal feeding stuffs</title>
  <docidentifier>ISO 16634:All Parts</docidentifier>
  <date type="published"><from>--</from></date>
  <contributor>
    <role type="publisher"/>
    <organization>
      <abbreviation>ISO</abbreviation>
    </organization>
  </contributor>
  <note format="text/plain" reference="1">ISO DATE: Under preparation. (Stage at the time of publication ISO/DIS 16634)</note>
</bibitem>
<bibitem id="ISO20483" type="standard">
  <title format="text/plain">Cereals and pulses</title>
  <docidentifier>ISO 20483</docidentifier>
  <date type="published"><from>2013</from><to>2014</to></date>
  <contributor>
    <role type="publisher"/>
    <organization>
      <name>International Organization for Standardization</name>
    </organization>
  </contributor>
</bibitem>
<bibitem id="ref1">
  <formattedref format="application/x-isodoc+xml"><smallcap>Standard No I.C.C 167</smallcap>. <em>Determination of the protein content in cereal and cereal products for food and animal feeding stuffs according to the Dumas combustion method</em> (see <link target="http://www.icc.or.at"/>)</formattedref>
  <docidentifier>ICC 167</docidentifier>
</bibitem>

</references><references id="_bibliography" obligation="informative">
  <title>Bibliography</title>
<bibitem id="ISO3696" type="standard">
  <title format="text/plain">Water for analytical laboratory use</title>
  <docidentifier>ISO 3696</docidentifier>
  <contributor>
    <role type="publisher"/>
    <organization>
      <abbreviation>ISO</abbreviation>
    </organization>
  </contributor>
</bibitem>
<bibitem id="ref10">
  <formattedref format="application/x-isodoc+xml"><smallcap>Standard No I.C.C 167</smallcap>. <em>Determination of the protein content in cereal and cereal products for food and animal feeding stuffs according to the Dumas combustion method</em> (see <link target="http://www.icc.or.at"/>)</formattedref>
  <docidentifier>[10]</docidentifier>
</bibitem>
<bibitem id="ref11">
  <formattedref format="application/x-isodoc+xml"><smallcap>Standard No I.C.C 167</smallcap>. <em>Determination of the protein content in cereal and cereal products for food and animal feeding stuffs according to the Dumas combustion method</em> (see <link target="http://www.icc.or.at"/>)</formattedref>
  <docidentifier>IETF RFC 10</docidentifier>
</bibitem>


</references>
</bibliography>
    </gb-standard>
    INPUT
          <html xmlns:epub="http://www.idpf.org/2007/ops">
         <head>
           <title>test</title>
           <body lang="EN-US" link="blue" vlink="#954F72">
             <div class="WordSection1">
               <p>&#160;</p>
             </div>
             <br/>
             <div class="WordSection2">
               <br/>
               <div>
                 <h1 class="ForewordTitle">Foreword&#160;</h1>
                 <p id="_f06fd0d1-a203-4f3d-a515-0bdba0f8d83f">
         <a href="#ISO712">ISO 712</a>
         <a href="#ref1">ICC 167</a>
         <a href="#ref10">[10]</a>
         </p>
               </div>
               <p>&#160;</p>
             </div>
             <br/>
             <div class="WordSection3">
               <p class="zzSTDTitle1">XXXX</p>
               <div>
                 <h1>1.&#12288;Normative References</h1>
                 <p>The following documents are referred to in the text in such a way that some or all of their content constitutes requirements of this document. For dated references, only the edition cited applies. For undated references, the latest edition of the referenced document (including any amendments) applies.</p>
                 <p id="ISO712">ISO 712, <i> Cereals and cereal products</i></p>
                 <p id="ISO16634">ISO 16634:All Parts: --<a href="#ftn1" epub:type="footnote"><sup>1</sup></a>, <i> Cereals, pulses, milled cereal products, oilseeds and animal feeding stuffs</i></p>
                 <p id="ISO20483">ISO 20483: 2013&#8211;2014, <i> Cereals and pulses</i></p>
                 <p id="ref1" class="Biblio">ICC 167, <span style="font-variant:small-caps;">Standard No I.C.C 167</span>. <i>Determination of the protein content in cereal and cereal products for food and animal feeding stuffs according to the Dumas combustion method</i> (see <a href="http://www.icc.or.at">http://www.icc.or.at</a>)</p>
               </div>
               <br/>
               <div>
                 <h1 class="Section3">Bibliography</h1>
                 <p id="ISO3696" class="Biblio">[1]&#160; ISO 3696, <i> Water for analytical laboratory use</i></p>
                 <p id="ref10" class="Biblio">[10]&#160; <span style="font-variant:small-caps;">Standard No I.C.C 167</span>. <i>Determination of the protein content in cereal and cereal products for food and animal feeding stuffs according to the Dumas combustion method</i> (see <a href="http://www.icc.or.at">http://www.icc.or.at</a>)</p>
                 <p id="ref11" class="Biblio">[3]&#160; IETF RFC 10,<span style="font-variant:small-caps;">Standard No I.C.C 167</span>. <i>Determination of the protein content in cereal and cereal products for food and animal feeding stuffs according to the Dumas combustion method</i> (see <a href="http://www.icc.or.at">http://www.icc.or.at</a>)</p>
               </div>
               <hr width="25%"/>
               <aside id="ftn1" class="footnote">
         <p>Under preparation. (Stage at the time of publication ISO/DIS 16634)</p>
       </aside>
             </div>
           </body>
         </head>
       </html>
    OUTPUT
  end
end
