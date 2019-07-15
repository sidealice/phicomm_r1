.class public final Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "TtmlDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    }
.end annotation


# static fields
.field private static final ATTR_BEGIN:Ljava/lang/String; = "begin"

.field private static final ATTR_DURATION:Ljava/lang/String; = "dur"

.field private static final ATTR_END:Ljava/lang/String; = "end"

.field private static final ATTR_REGION:Ljava/lang/String; = "region"

.field private static final ATTR_STYLE:Ljava/lang/String; = "style"

.field private static final CLOCK_TIME:Ljava/util/regex/Pattern;

.field private static final DEFAULT_FRAME_AND_TICK_RATE:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

.field private static final DEFAULT_FRAME_RATE:I = 0x1e

.field private static final FONT_SIZE:Ljava/util/regex/Pattern;

.field private static final OFFSET_TIME:Ljava/util/regex/Pattern;

.field private static final PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "TtmlDecoder"

.field private static final TTP:Ljava/lang/String; = "http://www.w3.org/ns/ttml#parameter"


# instance fields
.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 69
    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    .line 70
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->CLOCK_TIME:Ljava/util/regex/Pattern;

    .line 72
    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    .line 73
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->OFFSET_TIME:Ljava/util/regex/Pattern;

    .line 74
    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    .line 75
    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    .line 76
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    .line 80
    new-instance v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;-><init>(FII)V

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 86
    const-string v1, "TtmlDecoder"

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 88
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 89
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .locals 0
    .param p1, "style"    # Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .prologue
    .line 404
    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .end local p1    # "style":Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    invoke-direct {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;-><init>()V

    :cond_0
    return-object p1
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 470
    const-string v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "head"

    .line 471
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "body"

    .line 472
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "div"

    .line 473
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "p"

    .line 474
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "span"

    .line 475
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "br"

    .line 476
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "style"

    .line 477
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "styling"

    .line 478
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "layout"

    .line 479
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "region"

    .line 480
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "metadata"

    .line 481
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "smpte:image"

    .line 482
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "smpte:data"

    .line 483
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "smpte:information"

    .line 484
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseFontSize(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)V
    .locals 8
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "out"    # Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 489
    const-string v3, "\\s+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "expressions":[Ljava/lang/String;
    array-length v3, v0

    if-ne v3, v4, :cond_1

    .line 492
    sget-object v3, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 502
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 503
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, "unit":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 515
    new-instance v3, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid unit for fontSize: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 493
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "unit":Ljava/lang/String;
    :cond_1
    array-length v3, v0

    if-ne v3, v5, :cond_2

    .line 494
    sget-object v3, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    aget-object v6, v0, v4

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 495
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    const-string v3, "TtmlDecoder"

    const-string v6, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 498
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    new-instance v3, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid number of entries for fontSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 504
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    .restart local v2    # "unit":Ljava/lang/String;
    :sswitch_0
    const-string v6, "px"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string v6, "em"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v4

    goto :goto_1

    :sswitch_2
    const-string v6, "%"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v5

    goto :goto_1

    .line 506
    :pswitch_0
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 517
    :goto_2
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontSize(F)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 521
    return-void

    .line 509
    :pswitch_1
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    goto :goto_2

    .line 512
    :pswitch_2
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    goto :goto_2

    .line 519
    .end local v2    # "unit":Ljava/lang/String;
    :cond_3
    new-instance v3, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid expression for fontSize: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 504
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .locals 13
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 164
    const/16 v1, 0x1e

    .line 165
    .local v1, "frameRate":I
    const-string v11, "http://www.w3.org/ns/ttml#parameter"

    const-string v12, "frameRate"

    invoke-interface {p1, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "frameRateString":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 167
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 170
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 171
    .local v2, "frameRateMultiplier":F
    const-string v11, "http://www.w3.org/ns/ttml#parameter"

    const-string v12, "frameRateMultiplier"

    invoke-interface {p1, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "frameRateMultiplierString":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 173
    const-string v11, " "

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 174
    .local v6, "parts":[Ljava/lang/String;
    array-length v11, v6

    const/4 v12, 0x2

    if-eq v11, v12, :cond_1

    .line 175
    new-instance v11, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v12, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-direct {v11, v12}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 177
    :cond_1
    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-float v5, v11

    .line 178
    .local v5, "numerator":F
    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-float v0, v11

    .line 179
    .local v0, "denominator":F
    div-float v2, v5, v0

    .line 182
    .end local v0    # "denominator":F
    .end local v5    # "numerator":F
    .end local v6    # "parts":[Ljava/lang/String;
    :cond_2
    sget-object v11, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    iget v7, v11, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->subFrameRate:I

    .line 183
    .local v7, "subFrameRate":I
    const-string v11, "http://www.w3.org/ns/ttml#parameter"

    const-string v12, "subFrameRate"

    invoke-interface {p1, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, "subFrameRateString":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 185
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 188
    :cond_3
    sget-object v11, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    iget v9, v11, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->tickRate:I

    .line 189
    .local v9, "tickRate":I
    const-string v11, "http://www.w3.org/ns/ttml#parameter"

    const-string v12, "tickRate"

    invoke-interface {p1, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 190
    .local v10, "tickRateString":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 191
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 193
    :cond_4
    new-instance v11, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    int-to-float v12, v1

    mul-float/2addr v12, v2

    invoke-direct {v11, v12, v7, v9}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;-><init>(FII)V

    return-object v11
.end method

.method private parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 200
    .local p2, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;>;"
    .local p3, "globalRegions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;>;"
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 201
    const-string v4, "style"

    invoke-static {p1, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 202
    const-string v4, "style"

    invoke-static {p1, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "parentStyleId":Ljava/lang/String;
    new-instance v4, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;-><init>()V

    invoke-direct {p0, p1, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    .line 204
    .local v2, "style":Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    if-eqz v1, :cond_1

    .line 205
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v0, v6, v5

    .line 206
    .local v0, "id":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->chain(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 205
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 209
    .end local v0    # "id":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 210
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .end local v1    # "parentStyleId":Ljava/lang/String;
    .end local v2    # "style":Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    :cond_2
    :goto_1
    const-string v4, "head"

    invoke-static {p1, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 219
    return-object p2

    .line 212
    :cond_3
    const-string v4, "region"

    invoke-static {p1, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 213
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseRegionAttributes(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;

    move-result-object v3

    .line 214
    .local v3, "ttmlRegion":Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;
    if-eqz v3, :cond_2

    .line 215
    iget-object v4, v3, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->id:Ljava/lang/String;

    invoke-interface {p3, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private parseNode(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .locals 22
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .param p4, "frameAndTickRate"    # Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlNode;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;",
            ">;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;",
            ")",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 410
    .local p3, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;>;"
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 411
    .local v12, "duration":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 412
    .local v4, "startTime":J
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 413
    .local v6, "endTime":J
    const-string v10, ""

    .line 414
    .local v10, "regionId":Ljava/lang/String;
    const/4 v9, 0x0

    .line 415
    .local v9, "styleIds":[Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v11

    .line 416
    .local v11, "attributeCount":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v8

    .line 417
    .local v8, "style":Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v11, :cond_2

    .line 418
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "attr":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    .line 420
    .local v16, "value":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 417
    :cond_1
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 420
    :sswitch_0
    const-string v17, "begin"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string v17, "end"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v17, "dur"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v17, "style"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v17, "region"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    .line 422
    :pswitch_0
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v4

    .line 423
    goto :goto_2

    .line 425
    :pswitch_1
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v6

    .line 426
    goto :goto_2

    .line 428
    :pswitch_2
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v12

    .line 429
    goto :goto_2

    .line 432
    :pswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 433
    .local v15, "ids":[Ljava/lang/String;
    array-length v3, v15

    if-lez v3, :cond_1

    .line 434
    move-object v9, v15

    goto :goto_2

    .line 438
    .end local v15    # "ids":[Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 441
    move-object/from16 v10, v16

    goto :goto_2

    .line 449
    .end local v2    # "attr":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    move-wide/from16 v18, v0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v18, v20

    if-eqz v3, :cond_4

    .line 450
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v18

    if-eqz v3, :cond_3

    .line 451
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    move-wide/from16 v18, v0

    add-long v4, v4, v18

    .line 453
    :cond_3
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v6, v18

    if-eqz v3, :cond_4

    .line 454
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    move-wide/from16 v18, v0

    add-long v6, v6, v18

    .line 457
    :cond_4
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v6, v18

    if-nez v3, :cond_5

    .line 458
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v12, v18

    if-eqz v3, :cond_6

    .line 460
    add-long v6, v4, v12

    .line 466
    :cond_5
    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v3 .. v10}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->buildNode(Ljava/lang/String;JJLcom/google/android/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v3

    return-object v3

    .line 461
    :cond_6
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->endTimeUs:J

    move-wide/from16 v18, v0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v18, v20

    if-eqz v3, :cond_5

    .line 463
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->endTimeUs:J

    goto :goto_3

    .line 420
    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_4
        0x18601 -> :sswitch_2
        0x188db -> :sswitch_1
        0x59478a9 -> :sswitch_0
        0x68b1db1 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private parseRegionAttributes(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;
    .locals 16
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 230
    const-string v1, "id"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "regionId":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 232
    const/4 v1, 0x0

    .line 308
    :goto_0
    return-object v1

    .line 237
    :cond_0
    const-string v1, "origin"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 238
    .local v14, "regionOrigin":Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 239
    sget-object v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 240
    .local v12, "originMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v12, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v3, v1, v5

    .line 243
    .local v3, "position":F
    const/4 v1, 0x2

    invoke-virtual {v12, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v4, v1, v5

    .line 264
    .local v4, "line":F
    const-string v1, "extent"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 265
    .local v13, "regionExtent":Ljava/lang/String;
    if-eqz v13, :cond_6

    .line 266
    sget-object v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 267
    .local v10, "extentMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 269
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v10, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v7, v1, v5

    .line 270
    .local v7, "width":F
    const/4 v1, 0x2

    invoke-virtual {v10, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v11, v1, v5

    .line 289
    .local v11, "height":F
    const/4 v6, 0x0

    .line 290
    .local v6, "lineAnchor":I
    const-string v1, "displayAlign"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 292
    .local v8, "displayAlign":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 293
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v1, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 308
    :cond_2
    :goto_2
    new-instance v1, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;FFIIF)V

    goto/16 :goto_0

    .line 244
    .end local v3    # "position":F
    .end local v4    # "line":F
    .end local v6    # "lineAnchor":I
    .end local v7    # "width":F
    .end local v8    # "displayAlign":Ljava/lang/String;
    .end local v10    # "extentMatcher":Ljava/util/regex/Matcher;
    .end local v11    # "height":F
    .end local v13    # "regionExtent":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 245
    .local v9, "e":Ljava/lang/NumberFormatException;
    const-string v1, "TtmlDecoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring region with malformed origin: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 249
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    const-string v1, "TtmlDecoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring region with unsupported origin: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 253
    .end local v12    # "originMatcher":Ljava/util/regex/Matcher;
    :cond_4
    const-string v1, "TtmlDecoder"

    const-string v5, "Ignoring region without an origin"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 271
    .restart local v3    # "position":F
    .restart local v4    # "line":F
    .restart local v10    # "extentMatcher":Ljava/util/regex/Matcher;
    .restart local v12    # "originMatcher":Ljava/util/regex/Matcher;
    .restart local v13    # "regionExtent":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 272
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-string v1, "TtmlDecoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring region with malformed extent: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 276
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const-string v1, "TtmlDecoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring region with unsupported extent: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 280
    .end local v10    # "extentMatcher":Ljava/util/regex/Matcher;
    :cond_6
    const-string v1, "TtmlDecoder"

    const-string v5, "Ignoring region without an extent"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 293
    .restart local v6    # "lineAnchor":I
    .restart local v7    # "width":F
    .restart local v8    # "displayAlign":Ljava/lang/String;
    .restart local v10    # "extentMatcher":Ljava/util/regex/Matcher;
    .restart local v11    # "height":F
    :sswitch_0
    const-string v15, "center"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x0

    goto/16 :goto_1

    :sswitch_1
    const-string v15, "after"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    goto/16 :goto_1

    .line 295
    :pswitch_0
    const/4 v6, 0x1

    .line 296
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v11, v1

    add-float/2addr v4, v1

    .line 297
    goto/16 :goto_2

    .line 299
    :pswitch_1
    const/4 v6, 0x2

    .line 300
    add-float/2addr v4, v11

    .line 301
    goto/16 :goto_2

    .line 293
    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_0
        0x58705dc -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "style"    # Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 316
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 317
    .local v0, "attributeCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 318
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "attributeValue":Ljava/lang/String;
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    move v4, v6

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 317
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 319
    :sswitch_0
    const-string v10, "id"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_1

    :sswitch_1
    const-string v10, "backgroundColor"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v7

    goto :goto_1

    :sswitch_2
    const-string v10, "color"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v8

    goto :goto_1

    :sswitch_3
    const-string v10, "fontFamily"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v9

    goto :goto_1

    :sswitch_4
    const-string v10, "fontSize"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_5
    const-string v10, "fontWeight"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_6
    const-string v10, "fontStyle"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_7
    const-string v10, "textAlign"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    goto :goto_1

    :sswitch_8
    const-string v10, "textDecoration"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto :goto_1

    .line 321
    :pswitch_0
    const-string v4, "style"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 322
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    goto :goto_2

    .line 326
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 328
    :try_start_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setBackgroundColor(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 329
    :catch_0
    move-exception v2

    .line 330
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "TtmlDecoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed parsing background value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 334
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 336
    :try_start_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontColor(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 337
    :catch_1
    move-exception v2

    .line 338
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "TtmlDecoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed parsing color value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 342
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontFamily(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 343
    goto/16 :goto_2

    .line 346
    :pswitch_4
    :try_start_2
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 347
    invoke-static {v1, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseFontSize(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)V
    :try_end_2
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 348
    :catch_2
    move-exception v2

    .line 349
    .local v2, "e":Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    const-string v4, "TtmlDecoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed parsing fontSize value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 353
    .end local v2    # "e":Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    const-string v10, "bold"

    .line 354
    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 353
    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setBold(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 355
    goto/16 :goto_2

    .line 357
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    const-string v10, "italic"

    .line 358
    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 357
    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setItalic(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 359
    goto/16 :goto_2

    .line 361
    :pswitch_7
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    :cond_2
    move v4, v6

    :goto_3
    packed-switch v4, :pswitch_data_1

    goto/16 :goto_2

    .line 363
    :pswitch_8
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 364
    goto/16 :goto_2

    .line 361
    :sswitch_9
    const-string v10, "left"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_3

    :sswitch_a
    const-string v10, "start"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v7

    goto :goto_3

    :sswitch_b
    const-string v10, "right"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v8

    goto :goto_3

    :sswitch_c
    const-string v10, "end"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v9

    goto :goto_3

    :sswitch_d
    const-string v10, "center"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_3

    .line 366
    :pswitch_9
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 367
    goto/16 :goto_2

    .line 369
    :pswitch_a
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 370
    goto/16 :goto_2

    .line 372
    :pswitch_b
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 373
    goto/16 :goto_2

    .line 375
    :pswitch_c
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    goto/16 :goto_2

    .line 380
    :pswitch_d
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_2

    :cond_3
    move v4, v6

    :goto_4
    packed-switch v4, :pswitch_data_2

    goto/16 :goto_2

    .line 382
    :pswitch_e
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setLinethrough(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 383
    goto/16 :goto_2

    .line 380
    :sswitch_e
    const-string v10, "linethrough"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    goto :goto_4

    :sswitch_f
    const-string v10, "nolinethrough"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v7

    goto :goto_4

    :sswitch_10
    const-string v10, "underline"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v8

    goto :goto_4

    :sswitch_11
    const-string v10, "nounderline"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v9

    goto :goto_4

    .line 385
    :pswitch_f
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setLinethrough(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 386
    goto/16 :goto_2

    .line 388
    :pswitch_10
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setUnderline(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 389
    goto/16 :goto_2

    .line 391
    :pswitch_11
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setUnderline(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    goto/16 :goto_2

    .line 400
    .end local v1    # "attributeValue":Ljava/lang/String;
    :cond_4
    return-object p2

    .line 319
    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_6
        -0x48ff636d -> :sswitch_3
        -0x3f826a28 -> :sswitch_7
        -0x3468fa43 -> :sswitch_8
        -0x2bc67c59 -> :sswitch_5
        0xd1b -> :sswitch_0
        0x5a72f63 -> :sswitch_2
        0x15caa0f0 -> :sswitch_4
        0x4cb7f6d5 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_d
    .end packed-switch

    .line 361
    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_d
        0x188db -> :sswitch_c
        0x32a007 -> :sswitch_9
        0x677c21c -> :sswitch_b
        0x68ac462 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 380
    :sswitch_data_2
    .sparse-switch
        -0x57195dd5 -> :sswitch_11
        -0x3d363934 -> :sswitch_10
        0x36723ff0 -> :sswitch_f
        0x641ec051 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "parentStyleIds"    # Ljava/lang/String;

    .prologue
    .line 312
    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseTimeExpression(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J
    .locals 20
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "frameAndTickRate"    # Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 536
    sget-object v15, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->CLOCK_TIME:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 537
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 538
    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 539
    .local v6, "hours":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const-wide/16 v18, 0xe10

    mul-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-double v2, v0

    .line 540
    .local v2, "durationSeconds":D
    const/4 v15, 0x2

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 541
    .local v8, "minutes":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const-wide/16 v18, 0x3c

    mul-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v2, v2, v16

    .line 542
    const/4 v15, 0x3

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 543
    .local v9, "seconds":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v2, v2, v16

    .line 544
    const/4 v15, 0x4

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 545
    .local v4, "fraction":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    :goto_0
    add-double v2, v2, v16

    .line 546
    const/4 v15, 0x5

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 547
    .local v5, "frames":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 548
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-float v15, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    move/from16 v16, v0

    div-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    :goto_1
    add-double v2, v2, v16

    .line 549
    const/4 v15, 0x6

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 550
    .local v12, "subframes":Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 551
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget v15, v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->subFrameRate:I

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-object/from16 v0, p1

    iget v15, v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    :goto_2
    add-double v2, v2, v16

    .line 554
    const-wide v16, 0x412e848000000000L    # 1000000.0

    mul-double v16, v16, v2

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    .line 581
    .end local v2    # "durationSeconds":D
    .end local v4    # "fraction":Ljava/lang/String;
    .end local v5    # "frames":Ljava/lang/String;
    .end local v6    # "hours":Ljava/lang/String;
    .end local v8    # "minutes":Ljava/lang/String;
    .end local v9    # "seconds":Ljava/lang/String;
    .end local v12    # "subframes":Ljava/lang/String;
    :goto_3
    return-wide v16

    .line 545
    .restart local v2    # "durationSeconds":D
    .restart local v4    # "fraction":Ljava/lang/String;
    .restart local v6    # "hours":Ljava/lang/String;
    .restart local v8    # "minutes":Ljava/lang/String;
    .restart local v9    # "seconds":Ljava/lang/String;
    :cond_0
    const-wide/16 v16, 0x0

    goto :goto_0

    .line 548
    .restart local v5    # "frames":Ljava/lang/String;
    :cond_1
    const-wide/16 v16, 0x0

    goto :goto_1

    .line 551
    .restart local v12    # "subframes":Ljava/lang/String;
    :cond_2
    const-wide/16 v16, 0x0

    goto :goto_2

    .line 556
    .end local v2    # "durationSeconds":D
    .end local v4    # "fraction":Ljava/lang/String;
    .end local v5    # "frames":Ljava/lang/String;
    .end local v6    # "hours":Ljava/lang/String;
    .end local v8    # "minutes":Ljava/lang/String;
    .end local v9    # "seconds":Ljava/lang/String;
    .end local v12    # "subframes":Ljava/lang/String;
    :cond_3
    sget-object v15, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->OFFSET_TIME:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 557
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 558
    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 559
    .local v13, "timeValue":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 560
    .local v10, "offsetSeconds":D
    const/4 v15, 0x2

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 561
    .local v14, "unit":Ljava/lang/String;
    const/4 v15, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :cond_4
    :goto_4
    packed-switch v15, :pswitch_data_0

    .line 581
    :goto_5
    :pswitch_0
    const-wide v16, 0x412e848000000000L    # 1000000.0

    mul-double v16, v16, v10

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    goto :goto_3

    .line 561
    :sswitch_0
    const-string v16, "h"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/4 v15, 0x0

    goto :goto_4

    :sswitch_1
    const-string v16, "m"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/4 v15, 0x1

    goto :goto_4

    :sswitch_2
    const-string v16, "s"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/4 v15, 0x2

    goto :goto_4

    :sswitch_3
    const-string v16, "ms"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/4 v15, 0x3

    goto :goto_4

    :sswitch_4
    const-string v16, "f"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/4 v15, 0x4

    goto :goto_4

    :sswitch_5
    const-string v16, "t"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/4 v15, 0x5

    goto :goto_4

    .line 563
    :pswitch_1
    const-wide v16, 0x40ac200000000000L    # 3600.0

    mul-double v10, v10, v16

    .line 564
    goto :goto_5

    .line 566
    :pswitch_2
    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    mul-double v10, v10, v16

    .line 567
    goto :goto_5

    .line 572
    :pswitch_3
    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v10, v10, v16

    .line 573
    goto :goto_5

    .line 575
    :pswitch_4
    move-object/from16 v0, p1

    iget v15, v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double v0, v15

    move-wide/from16 v16, v0

    div-double v10, v10, v16

    .line 576
    goto :goto_5

    .line 578
    :pswitch_5
    move-object/from16 v0, p1

    iget v15, v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->tickRate:I

    int-to-double v0, v15

    move-wide/from16 v16, v0

    div-double v10, v10, v16

    goto :goto_5

    .line 583
    .end local v10    # "offsetSeconds":D
    .end local v13    # "timeValue":Ljava/lang/String;
    .end local v14    # "unit":Ljava/lang/String;
    :cond_5
    new-instance v15, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Malformed time expression: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 561
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_4
        0x68 -> :sswitch_0
        0x6d -> :sswitch_1
        0x73 -> :sswitch_2
        0x74 -> :sswitch_5
        0xda6 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected bridge synthetic decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->decode([BIZ)Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;

    move-result-object v0

    return-object v0
.end method

.method protected decode([BIZ)Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
    .locals 20
    .param p1, "bytes"    # [B
    .param p2, "length"    # I
    .param p3, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 99
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .line 100
    .local v15, "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v6, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v12, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;>;"
    const-string v17, ""

    new-instance v18, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v7, Ljava/io/ByteArrayInputStream;

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v7, v0, v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 104
    .local v7, "inputStream":Ljava/io/ByteArrayInputStream;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v15, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 105
    const/4 v13, 0x0

    .line 106
    .local v13, "ttmlSubtitle":Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 107
    .local v10, "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/android/exoplayer2/text/ttml/TtmlNode;>;"
    const/4 v14, 0x0

    .line 108
    .local v14, "unsupportedNodeDepth":I
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 109
    .local v4, "eventType":I
    sget-object v5, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    .line 110
    .local v5, "frameAndTickRate":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    :goto_0
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_9

    .line 111
    invoke-virtual {v10}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    .line 112
    .local v11, "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    if-nez v14, :cond_7

    .line 113
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 114
    .local v8, "name":Ljava/lang/String;
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v4, v0, :cond_4

    .line 115
    const-string v17, "tt"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 116
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    move-result-object v5

    .line 118
    :cond_0
    invoke-static {v8}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->isSupportedTag(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 119
    const-string v17, "TtmlDecoder"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Ignoring unsupported tag: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    add-int/lit8 v14, v14, 0x1

    .line 151
    .end local v8    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 152
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 153
    goto :goto_0

    .line 121
    .restart local v8    # "name":Ljava/lang/String;
    :cond_2
    const-string v17, "head"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 122
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6, v12}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 155
    .end local v4    # "eventType":I
    .end local v5    # "frameAndTickRate":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .end local v6    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;>;"
    .end local v7    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/android/exoplayer2/text/ttml/TtmlNode;>;"
    .end local v11    # "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .end local v12    # "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;>;"
    .end local v13    # "ttmlSubtitle":Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
    .end local v14    # "unsupportedNodeDepth":I
    .end local v15    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v16

    .line 156
    .local v16, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v17, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v18, "Unable to decode source"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 125
    .end local v16    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "eventType":I
    .restart local v5    # "frameAndTickRate":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .restart local v6    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;>;"
    .restart local v7    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v10    # "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/android/exoplayer2/text/ttml/TtmlNode;>;"
    .restart local v11    # "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .restart local v12    # "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;>;"
    .restart local v13    # "ttmlSubtitle":Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
    .restart local v14    # "unsupportedNodeDepth":I
    .restart local v15    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v11, v12, v5}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseNode(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v9

    .line 126
    .local v9, "node":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    invoke-virtual {v10, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 127
    if-eqz v11, :cond_1

    .line 128
    invoke-virtual {v11, v9}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->addChild(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;)V
    :try_end_1
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 130
    .end local v9    # "node":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    :catch_1
    move-exception v3

    .line 131
    .local v3, "e":Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    :try_start_2
    const-string v17, "TtmlDecoder"

    const-string v18, "Suppressing parser error"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    add-int/lit8 v14, v14, 0x1

    .line 134
    goto :goto_1

    .line 136
    .end local v3    # "e":Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    :cond_4
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v4, v0, :cond_5

    .line 137
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->buildTextNode(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->addChild(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 157
    .end local v4    # "eventType":I
    .end local v5    # "frameAndTickRate":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .end local v6    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;>;"
    .end local v7    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/android/exoplayer2/text/ttml/TtmlNode;>;"
    .end local v11    # "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .end local v12    # "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;>;"
    .end local v13    # "ttmlSubtitle":Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
    .end local v14    # "unsupportedNodeDepth":I
    .end local v15    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v3

    .line 158
    .local v3, "e":Ljava/io/IOException;
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Unexpected error when reading input."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 138
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "eventType":I
    .restart local v5    # "frameAndTickRate":Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .restart local v6    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;>;"
    .restart local v7    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v10    # "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/android/exoplayer2/text/ttml/TtmlNode;>;"
    .restart local v11    # "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .restart local v12    # "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;>;"
    .restart local v13    # "ttmlSubtitle":Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
    .restart local v14    # "unsupportedNodeDepth":I
    .restart local v15    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v4, v0, :cond_1

    .line 139
    :try_start_3
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "tt"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 140
    new-instance v13, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;

    .end local v13    # "ttmlSubtitle":Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
    invoke-virtual {v10}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-object/from16 v0, v17

    invoke-direct {v13, v0, v6, v12}, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;-><init>(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Ljava/util/Map;)V

    .line 142
    .restart local v13    # "ttmlSubtitle":Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
    :cond_6
    invoke-virtual {v10}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 145
    .end local v8    # "name":Ljava/lang/String;
    :cond_7
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v4, v0, :cond_8

    .line 146
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 147
    :cond_8
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v4, v0, :cond_1

    .line 148
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_1

    .line 154
    .end local v11    # "parent":Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    :cond_9
    return-object v13
.end method
