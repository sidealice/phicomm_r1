.class public final Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "SsaDecoder.java"


# static fields
.field private static final DIALOGUE_LINE_PREFIX:Ljava/lang/String; = "Dialogue: "

.field private static final FORMAT_LINE_PREFIX:Ljava/lang/String; = "Format: "

.field private static final SSA_TIMECODE_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "SsaDecoder"


# instance fields
.field private formatEndIndex:I

.field private formatKeyCount:I

.field private formatStartIndex:I

.field private formatTextIndex:I

.field private final haveInitializationData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+)(?::|\\.)(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->SSA_TIMECODE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;-><init>(Ljava/util/List;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    const-string v1, "SsaDecoder"

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 63
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->haveInitializationData:Z

    .line 65
    new-instance v0, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 66
    .local v0, "formatLine":Ljava/lang/String;
    const-string v1, "Format: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 67
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->parseFormatLine(Ljava/lang/String;)V

    .line 68
    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->parseHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 72
    .end local v0    # "formatLine":Ljava/lang/String;
    :goto_0
    return-void

    .line 70
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->haveInitializationData:Z

    goto :goto_0
.end method

.method private parseDialogueLine(Ljava/lang/String;Ljava/util/List;Lcom/google/android/exoplayer2/util/LongArray;)V
    .locals 12
    .param p1, "dialogueLine"    # Ljava/lang/String;
    .param p3, "cueTimesUs"    # Lcom/google/android/exoplayer2/util/LongArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;",
            "Lcom/google/android/exoplayer2/util/LongArray;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 163
    iget v7, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->formatKeyCount:I

    if-nez v7, :cond_1

    .line 164
    const-string v7, "SsaDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping dialogue line before format: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const-string v7, "Dialogue: "

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    iget v9, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->formatKeyCount:I

    .line 169
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "lineValues":[Ljava/lang/String;
    iget v7, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->formatStartIndex:I

    aget-object v7, v1, v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->parseTimecodeUs(Ljava/lang/String;)J

    move-result-wide v4

    .line 171
    .local v4, "startTimeUs":J
    cmp-long v7, v4, v10

    if-nez v7, :cond_2

    .line 172
    const-string v7, "SsaDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping invalid timing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    :cond_2
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 177
    .local v2, "endTimeUs":J
    iget v7, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->formatEndIndex:I

    aget-object v0, v1, v7

    .line 178
    .local v0, "endTimeString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 179
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->parseTimecodeUs(Ljava/lang/String;)J

    move-result-wide v2

    .line 180
    cmp-long v7, v2, v10

    if-nez v7, :cond_3

    .line 181
    const-string v7, "SsaDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping invalid timing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    :cond_3
    iget v7, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->formatTextIndex:I

    aget-object v7, v1, v7

    const-string v8, "\\{.*?\\}"

    const-string v9, ""

    .line 187
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\\\N"

    const-string v9, "\n"

    .line 188
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\\\n"

    const-string v9, "\n"

    .line 189
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 190
    .local v6, "text":Ljava/lang/String;
    new-instance v7, Lcom/google/android/exoplayer2/text/Cue;

    invoke-direct {v7, v6}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {p3, v4, v5}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    .line 192
    cmp-long v7, v2, v10

    if-eqz v7, :cond_0

    .line 193
    const/4 v7, 0x0

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {p3, v2, v3}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    goto/16 :goto_0
.end method

.method private parseEventBody(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/List;Lcom/google/android/exoplayer2/util/LongArray;)V
    .locals 2
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p3, "cueTimesUs"    # Lcom/google/android/exoplayer2/util/LongArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;",
            "Lcom/google/android/exoplayer2/util/LongArray;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/text/Cue;>;"
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "currentLine":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 117
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->haveInitializationData:Z

    if-nez v1, :cond_1

    const-string v1, "Format: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->parseFormatLine(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_1
    const-string v1, "Dialogue: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->parseDialogueLine(Ljava/lang/String;Ljava/util/List;Lcom/google/android/exoplayer2/util/LongArray;)V

    goto :goto_0

    .line 123
    :cond_2
    return-void
.end method

.method private parseFormatLine(Ljava/lang/String;)V
    .locals 6
    .param p1, "formatLine"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 131
    const-string v3, "Format: "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, ","

    invoke-static {v3, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "values":[Ljava/lang/String;
    array-length v3, v2

    iput v3, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->formatKeyCount:I

    .line 133
    iput v4, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->formatStartIndex:I

    .line 134
    iput v4, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->formatEndIndex:I

    .line 135
    iput v4, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->formatTextIndex:I

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->formatKeyCount:I

    if-ge v0, v3, :cond_1

    .line 137
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    move v3, v4

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 136
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :sswitch_0
    const-string v3, "start"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "end"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "text"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    .line 140
    :pswitch_0
    iput v0, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->formatStartIndex:I

    goto :goto_2

    .line 143
    :pswitch_1
    iput v0, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->formatEndIndex:I

    goto :goto_2

    .line 146
    :pswitch_2
    iput v0, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->formatTextIndex:I

    goto :goto_2

    .line 153
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-void

    .line 138
    nop

    :sswitch_data_0
    .sparse-switch
        0x188db -> :sswitch_1
        0x36452d -> :sswitch_2
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 2
    .param p1, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 98
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "currentLine":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 100
    const-string v1, "[Events]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    :cond_1
    return-void
.end method

.method public static parseTimecodeUs(Ljava/lang/String;)J
    .locals 10
    .param p0, "timeString"    # Ljava/lang/String;

    .prologue
    const-wide/32 v8, 0xf4240

    const-wide/16 v6, 0x3c

    .line 205
    sget-object v1, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->SSA_TIMECODE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 206
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 213
    :goto_0
    return-wide v2

    .line 209
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    mul-long/2addr v4, v6

    mul-long/2addr v4, v6

    mul-long v2, v4, v8

    .line 210
    .local v2, "timestampUs":J
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    mul-long/2addr v4, v6

    mul-long/2addr v4, v8

    add-long/2addr v2, v4

    .line 211
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    mul-long/2addr v4, v8

    add-long/2addr v2, v4

    .line 212
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 213
    goto :goto_0
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
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->decode([BIZ)Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;

    move-result-object v0

    return-object v0
.end method

.method protected decode([BIZ)Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "length"    # I
    .param p3, "reset"    # Z

    .prologue
    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v2, "cues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/text/Cue;>;"
    new-instance v0, Lcom/google/android/exoplayer2/util/LongArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/LongArray;-><init>()V

    .line 79
    .local v0, "cueTimesUs":Lcom/google/android/exoplayer2/util/LongArray;
    new-instance v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v4, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    .line 80
    .local v4, "data":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->haveInitializationData:Z

    if-nez v5, :cond_0

    .line 81
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->parseHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 83
    :cond_0
    invoke-direct {p0, v4, v2, v0}, Lcom/google/android/exoplayer2/text/ssa/SsaDecoder;->parseEventBody(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/List;Lcom/google/android/exoplayer2/util/LongArray;)V

    .line 85
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v3, v5, [Lcom/google/android/exoplayer2/text/Cue;

    .line 86
    .local v3, "cuesArray":[Lcom/google/android/exoplayer2/text/Cue;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 87
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/LongArray;->toArray()[J

    move-result-object v1

    .line 88
    .local v1, "cueTimesUsArray":[J
    new-instance v5, Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;

    invoke-direct {v5, v3, v1}, Lcom/google/android/exoplayer2/text/ssa/SsaSubtitle;-><init>([Lcom/google/android/exoplayer2/text/Cue;[J)V

    return-object v5
.end method
