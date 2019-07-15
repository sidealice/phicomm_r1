.class public Lcom/phicomm/speaker/bean/player/MusicPlayStatus;
.super Ljava/lang/Object;
.source "MusicPlayStatus.java"


# instance fields
.field private music_id:Ljava/lang/String;

.field private play_time:J

.field private status:I

.field private timestamp:J

.field private total_time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMusic_id()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/phicomm/speaker/bean/player/MusicPlayStatus;->music_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay_time()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/phicomm/speaker/bean/player/MusicPlayStatus;->play_time:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/phicomm/speaker/bean/player/MusicPlayStatus;->status:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/phicomm/speaker/bean/player/MusicPlayStatus;->timestamp:J

    return-wide v0
.end method

.method public getTotal_time()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/phicomm/speaker/bean/player/MusicPlayStatus;->total_time:J

    return-wide v0
.end method

.method public setMusic_id(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/phicomm/speaker/bean/player/MusicPlayStatus;->music_id:Ljava/lang/String;

    return-void
.end method

.method public setPlay_time(J)V
    .locals 0

    .line 58
    iput-wide p1, p0, Lcom/phicomm/speaker/bean/player/MusicPlayStatus;->play_time:J

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/phicomm/speaker/bean/player/MusicPlayStatus;->status:I

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 66
    iput-wide p1, p0, Lcom/phicomm/speaker/bean/player/MusicPlayStatus;->timestamp:J

    return-void
.end method

.method public setTotal_time(J)V
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/phicomm/speaker/bean/player/MusicPlayStatus;->total_time:J

    return-void
.end method
