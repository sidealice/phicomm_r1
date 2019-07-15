.class public Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$LastUptrackBean;
.super Ljava/lang/Object;
.source "AudioSecondList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LastUptrackBean"
.end annotation


# instance fields
.field private created_at:J

.field private duration:I

.field private track_id:I

.field private track_title:Ljava/lang/String;

.field private updated_at:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreated_at()J
    .locals 2

    .line 528
    iget-wide v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$LastUptrackBean;->created_at:J

    return-wide v0
.end method

.method public getDuration()I
    .locals 1

    .line 492
    iget v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$LastUptrackBean;->duration:I

    return v0
.end method

.method public getTrack_id()I
    .locals 1

    .line 564
    iget v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$LastUptrackBean;->track_id:I

    return v0
.end method

.method public getTrack_title()Ljava/lang/String;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$LastUptrackBean;->track_title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated_at()J
    .locals 2

    .line 510
    iget-wide v0, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$LastUptrackBean;->updated_at:J

    return-wide v0
.end method

.method public setCreated_at(J)V
    .locals 0

    .line 537
    iput-wide p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$LastUptrackBean;->created_at:J

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 501
    iput p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$LastUptrackBean;->duration:I

    return-void
.end method

.method public setTrack_id(I)V
    .locals 0

    .line 573
    iput p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$LastUptrackBean;->track_id:I

    return-void
.end method

.method public setTrack_title(Ljava/lang/String;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$LastUptrackBean;->track_title:Ljava/lang/String;

    return-void
.end method

.method public setUpdated_at(J)V
    .locals 0

    .line 519
    iput-wide p1, p0, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean$LastUptrackBean;->updated_at:J

    return-void
.end method
