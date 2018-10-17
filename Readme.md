# Jalaali Swift

A few Swift functions for converting Jalaali (Jalali, Persian, Khayyami, Khorshidi, Shamsi) and Gregorian calendar systems to each other.

سوییفت جلالی مجموعه ای از توابع برای تبدیل تاریخ میلادی به شمسی و برعکس است.

## About

Jalali calendar is a solar calendar that was used in Persia, variants of which today are still in use in Iran as well as Afghanistan. [Read more on Wikipedia](http://en.wikipedia.org/wiki/Jalali_calendar) or see [Calendar Converter](http://www.fourmilab.ch/documents/calendar/).

Calendar conversion is based on the [algorithm provided by Kazimierz M. Borkowski](http://www.astro.uni.torun.pl/~kb/Papers/EMP/PersianC-EMP.htm) and has a very good performance.

تقویم جلالی تقویمی شمسی است که در ایران و افغانستان استفاده میشود. [ادامه مطالعه در ویکیپدیا](http://en.wikipedia.org/wiki/Jalali_calendar)
الگوریتم تبدیل تاریخ ها از [الگوریتم نوشته شده توسط Kazimierz M. Borkowski گرفته شده](http://www.astro.uni.torun.pl/~kb/Papers/EMP/PersianC-EMP.htm)
## Install
### Pod:
you could add this pod to your podfile:
```
pod 'SwiftJalaali'
```
and import it where you want to use
```
import SwiftJalaali
```
### پاد:
برای استفاده از پاد میتوان استفاده کرد
```
pod 'SwiftJalaali'
```
و هنگام استفاده آن را اضافه کرد
```
import SwiftJalaali
```

### Manual:
Download and add 'SwiftJalaali.swift' to your project files.
### دستی:
فایل 'SwiftJalaali.swift' را دانلود کرده و در پروژه خود اضافه کنید.
## API

### func toJalaali(gy: GregorianYear, _ gm: GregorianMonth, _ gd: GregorianDay) -> JalaaliDate

Converts a Gregorian date to Jalaali.
تبدیل تاریخ میلادی به شمسی.

### func toGregorian(jy: JalaaliYear, _ jm: JalaaliMonth, _ jd: JalaaliDay) -> GregorianDate

Converts a Jalaali date to Gregorian.

تبدیل تاریخ شمسی به میلادی.

### func isValidJalaaliDate(jy: JalaaliYear, _ jm: JalaaliMonth, _ jd: JalaaliDay) -> Bool

Checks whether a Jalaali date is valid or not.

بررسی دست بودن تاریخ شمسی.

### func isLeapJalaaliYear(jy: JalaaliYear) -> Bool {

Is this a leap year or not?

بررسی کبیسه بودن سال شمسی؟

### func lastDayOfJalaaliMonth(jy: JalaaliYear, _ jm: JalaaliMonth) -> JalaaliDay

Number of days in a given month in a Jalaali year.

تعداد روز ها در یک ماه داده شده.

## License

MIT
