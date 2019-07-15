.class public Lcom/phicomm/speaker/adapter/a/g;
.super Lcom/phicomm/speaker/adapter/a/a/c;
.source "SpeakerFm.java"


# instance fields
.field a:I

.field private b:Lnluparser/scheme/AudioResult$Music;


# direct methods
.method public constructor <init>(Lcom/unisound/lib/msgcenter/bean/LogMessage;)V
    .locals 4

    .line 23
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/a/a/c;-><init>(Lcom/unisound/lib/msgcenter/bean/LogMessage;)V

    const/4 p1, 0x1

    .line 15
    iput p1, p0, Lcom/phicomm/speaker/adapter/a/g;->a:I

    .line 24
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/phicomm/speaker/adapter/a/g;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 34
    iget v0, p0, Lcom/phicomm/speaker/adapter/a/g;->a:I

    const v1, 0x7f0800b5

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0800b9

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0800b8

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0800b7

    goto :goto_0

    :pswitch_3
    const v1, 0x7f0800b6

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

.method public a(Lnluparser/scheme/AudioResult$Music;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/a/g;->b:Lnluparser/scheme/AudioResult$Music;

    return-void
.end method

.method public b()Lnluparser/scheme/AudioResult$Music;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a/g;->b:Lnluparser/scheme/AudioResult$Music;

    return-object v0
.end method
