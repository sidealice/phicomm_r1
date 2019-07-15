.class public Lcom/unisound/vui/util/SpeakerTTSUtil;
.super Ljava/lang/Object;


# static fields
.field public static final TTS_SPEAKER_DEFAULT:I = 0x0

.field public static final TTS_SPEAKER_FEMALE:I = 0x2

.field public static final TTS_SPEAKER_MALE:I = 0x1

.field public static arrayString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static speakerType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/unisound/vui/util/SpeakerTTSUtil;->arrayString:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput v0, Lcom/unisound/vui/util/SpeakerTTSUtil;->speakerType:I

    sget-object v0, Lcom/unisound/vui/util/SpeakerTTSUtil;->arrayString:Ljava/util/ArrayList;

    sget v1, Lcom/unisound/vui/common/R$array;->tts_weather_no_result:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/unisound/vui/util/SpeakerTTSUtil;->arrayString:Ljava/util/ArrayList;

    sget v1, Lcom/unisound/vui/common/R$array;->tts_unsupport_answer:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getRadom(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    array-length v1, v0

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private static getSpeakerTTSArray(IILandroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I
    .param p1, "speaker"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/unisound/vui/util/SpeakerTTSUtil;->speakerType:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getRadom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    array-length v1, v0

    if-le v1, v2, :cond_0

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getRadom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    array-length v1, v0

    if-le v1, v3, :cond_0

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getRadom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getSpeakerTTSString(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTTSString(IILandroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I
    .param p1, "speaker"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcom/unisound/vui/util/SpeakerTTSUtil;->arrayString:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getSpeakerTTSArray(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p2}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getSpeakerTTSString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTTSStringArray(ILandroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTTSStringFromArray(ILandroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "id"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0, p1}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSStringArray(ILandroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    array-length v1, v0

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    aget-object v0, v0, v1

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    sget v2, Lcom/unisound/vui/util/SpeakerTTSUtil;->speakerType:I

    if-le v1, v2, :cond_0

    sget v1, Lcom/unisound/vui/util/SpeakerTTSUtil;->speakerType:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static setSpeakerTTSType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getEnableRecognizePersonal(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string v0, "male"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput v0, Lcom/unisound/vui/util/SpeakerTTSUtil;->speakerType:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "female"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    sput v0, Lcom/unisound/vui/util/SpeakerTTSUtil;->speakerType:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    sput v0, Lcom/unisound/vui/util/SpeakerTTSUtil;->speakerType:I

    goto :goto_0
.end method
