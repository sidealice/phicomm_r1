.class public Lcom/phicomm/speaker/player/swig/MetaData_t;
.super Ljava/lang/Object;
.source "MetaData_t.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 87
    invoke-static {}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->new_MetaData_t()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/phicomm/speaker/player/swig/MetaData_t;-><init>(JZ)V

    .line 88
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1
    .param p1, "cPtr"    # J
    .param p3, "cMemoryOwn"    # Z

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/phicomm/speaker/player/swig/MetaData_t;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/phicomm/speaker/player/swig/MetaData_t;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/phicomm/speaker/player/swig/MetaData_t;)J
    .locals 2
    .param p0, "obj"    # Lcom/phicomm/speaker/player/swig/MetaData_t;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/phicomm/speaker/player/swig/MetaData_t;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/phicomm/speaker/player/swig/MetaData_t;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/swig/MetaData_t;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/swig/MetaData_t;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/phicomm/speaker/player/swig/MetaData_t;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->delete_MetaData_t(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/phicomm/speaker/player/swig/MetaData_t;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/swig/MetaData_t;->delete()V

    .line 26
    return-void
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/phicomm/speaker/player/swig/MetaData_t;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->MetaData_t_album_get(JLcom/phicomm/speaker/player/swig/MetaData_t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/phicomm/speaker/player/swig/MetaData_t;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->MetaData_t_artist_get(JLcom/phicomm/speaker/player/swig/MetaData_t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtwork()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/phicomm/speaker/player/swig/MetaData_t;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->MetaData_t_artwork_get(JLcom/phicomm/speaker/player/swig/MetaData_t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/phicomm/speaker/player/swig/MetaData_t;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->MetaData_t_comment_get(JLcom/phicomm/speaker/player/swig/MetaData_t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/phicomm/speaker/player/swig/MetaData_t;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->MetaData_t_genre_get(JLcom/phicomm/speaker/player/swig/MetaData_t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/phicomm/speaker/player/swig/MetaData_t;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->MetaData_t_title_get(JLcom/phicomm/speaker/player/swig/MetaData_t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/phicomm/speaker/player/swig/MetaData_t;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->MetaData_t_album_set(JLcom/phicomm/speaker/player/swig/MetaData_t;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/phicomm/speaker/player/swig/MetaData_t;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->MetaData_t_artist_set(JLcom/phicomm/speaker/player/swig/MetaData_t;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public setArtwork(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/phicomm/speaker/player/swig/MetaData_t;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->MetaData_t_artwork_set(JLcom/phicomm/speaker/player/swig/MetaData_t;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/phicomm/speaker/player/swig/MetaData_t;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->MetaData_t_comment_set(JLcom/phicomm/speaker/player/swig/MetaData_t;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public setGenre(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/phicomm/speaker/player/swig/MetaData_t;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->MetaData_t_genre_set(JLcom/phicomm/speaker/player/swig/MetaData_t;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/phicomm/speaker/player/swig/MetaData_t;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->MetaData_t_title_set(JLcom/phicomm/speaker/player/swig/MetaData_t;Ljava/lang/String;)V

    .line 48
    return-void
.end method
