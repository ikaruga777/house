
TEMPLATE = <<~HTML
<h1>RubyKaigi 2023 宿情報</h1>
<h2>概要</h2>
<p><a href="https://twitter.com/UVB_76" target="_blank">@UVB_76</a>が会場のすぐ裏の一戸建てをairbnbで確保しているので一緒に泊まれる人を募集します。</p>
<h3>スケジュール</h3>
<p>5月11日（木）16:00 チェックイン 〜 5月14日（日）10:00 チェックアウト
<h3>募集人数</h3>
<p>@UVB_76含め、最大人数を6人とします。最少催行人数を4人とします。</p>
<h3>値段</h3>
<p>現状6人の予約時点で 3泊 66,000円 です。これを人数で割る事になります。仮に6人集まった場合、1泊3700円程度となります。</p>
<h3>お願いごと</h3>
<ul>みんななかよく。</ul>
<ul><a href="https://rubykaigi.org/2023/covid-19/">RubyKaigi 2023 の COVID-19 に関するポリシー</a>を遵守ください。</ul>
<ul>参加者都合のキャンセルについて返金できない可能性があることをご了承ください。</ul>
<h3>興味を持った方は</h3>
<p>何らかの手段で<a href="https://twitter.com/UVB_76" target="_blank">@UVB_76</a>まで連絡をください。</p>
HTML

require "js"
require "erb"
Document = JS.global[:document]
b = binding
main = ERB.new(TEMPLATE)
app = Document.querySelector("#app")
app[:innerHTML] = main.result(b)
