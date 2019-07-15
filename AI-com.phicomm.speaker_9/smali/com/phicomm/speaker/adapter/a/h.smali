.class public Lcom/phicomm/speaker/adapter/a/h;
.super Lcom/phicomm/speaker/adapter/a/a/c;
.source "SpeakerMusic.java"


# instance fields
.field a:I

.field private b:Lnluparser/scheme/MusicResult$Music;


# direct methods
.method public constructor <init>(Lcom/unisound/lib/msgcenter/bean/LogMessage;)V
    .locals 4

    .line 25
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/a/a/c;-><init>(Lcom/unisound/lib/msgcenter/bean/LogMessage;)V

    const/4 p1, 0x1

    .line 21
    iput p1, p0, Lcom/phicomm/speaker/adapter/a/h;->a:I

    .line 26
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/phicomm/speaker/adapter/a/h;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 36
    iget v0, p0, Lcom/phicomm/speaker/adapter/a/h;->a:I

    const v1, 0x7f080113

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v1, 0x7f080117

    goto :goto_0

    :pswitch_1
    const v1, 0x7f080116

    goto :goto_0

    :pswitch_2
    const v1, 0x7f080115

    goto :goto_0

    :pswitch_3
    const v1, 0x7f080114

    :goto_0
    :pswitch_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lnluparser/scheme/MusicResult$Music;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/a/h;->b:Lnluparser/scheme/MusicResult$Music;

    return-void
.end method

.method public b()Lnluparser/scheme/MusicResult$Music;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a/h;->b:Lnluparser/scheme/MusicResult$Music;

    return-object v0
.end method
