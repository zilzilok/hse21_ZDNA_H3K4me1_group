# [Проект по майнору "Биоинформатика" ВШЭ](http://wiki.cs.hse.ru/%D0%9C%D0%B0%D0%B9%D0%BD%D0%BE%D1%80_%D0%91%D0%B8%D0%BE%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%82%D0%B8%D0%BA%D0%B0_2_%D0%B3%D0%BE%D0%B4)
## Эпи-группа ZDNA_H3K4me1

### Состав группы
|         ФИ        | № группы  |                              github                              |
|:------------------|:---------:|:-----------------------------------------------------------------|
| Шаймуратова Эмилия|    2      | https://github.com/Emilichka/hse21_H3K4me1_ZDNA_mouse_1          |
| Сафин Тагир       |    2      | https://github.com/zilzilok/hse21_H3K4me1_ZDNA_mouse             |
| Рябинин Андрей    |    1      | https://github.com/ryandrey/hse21_H3K4me1_ZDNA_human             |
| Барановская Дарья |    2      | https://github.com/darya-baranovskaya/hse21_H3K4me1_ZDNA_mouse_1 |
| Залялов Александр |    1      | https://github.com/vporyadke/hse21_H3K4me1_ZDNA_human            |
| Кудрявцев Семен   |    4      | https://github.com/semkud/hse21_H3K4me1_ZDNA_mouse               |
| Фридман Михаил    |    3      | https://github.com/Fryman420/bioinf2021_H3K4me1_human            |







Посмотрев на участки полученные для пересесечения, стало понятно, что данные анализа мыши содержат мало пиков, поэтому пики были расширины с помощью коменды bedtools slop.

Увеличение интерввла.

`ls *bed | xargs -I{} sh -c "bedtools slop  -i {} -g hg19.chrom.sizes -b 500  > {}.bed"`

