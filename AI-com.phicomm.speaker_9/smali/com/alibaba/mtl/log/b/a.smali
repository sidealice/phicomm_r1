.class public Lcom/alibaba/mtl/log/b/a;
.super Ljava/lang/Object;
.source "CoreStatics.java"


# static fields
.field private static a:Ljava/lang/StringBuilder;

.field private static volatile e:J

.field private static f:J

.field private static g:J

.field private static h:J

.field private static i:J

.field private static j:J

.field private static k:J

.field private static l:J

.field private static m:J

.field private static n:J

.field private static o:J

.field private static p:J

.field private static q:J

.field private static r:J

.field private static s:J

.field private static t:J

.field private static u:I

.field private static u:J

.field private static v:I

.field private static v:J

.field private static w:I

.field private static w:J

.field private static x:J

.field private static y:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/log/b/a;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static declared-synchronized A()V
    .locals 7

    const-class v0, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v0

    .line 156
    :try_start_0
    sget-wide v1, Lcom/alibaba/mtl/log/b/a;->s:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    sput-wide v5, Lcom/alibaba/mtl/log/b/a;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 155
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized B()V
    .locals 7

    const-class v0, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v0

    .line 160
    :try_start_0
    sget-wide v1, Lcom/alibaba/mtl/log/b/a;->t:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    sput-wide v5, Lcom/alibaba/mtl/log/b/a;->t:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 159
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized C()V
    .locals 7

    const-class v0, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v0

    .line 164
    :try_start_0
    sget-wide v1, Lcom/alibaba/mtl/log/b/a;->u:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    sput-wide v5, Lcom/alibaba/mtl/log/b/a;->u:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 163
    monitor-exit v0

    throw v1
.end method

.method private static D()V
    .locals 6

    .line 263
    invoke-static {}, Lcom/alibaba/mtl/log/e/l;->u()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi"

    .line 264
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    .line 265
    sget-wide v0, Lcom/alibaba/mtl/log/b/a;->m:J

    add-long v4, v0, v2

    sput-wide v4, Lcom/alibaba/mtl/log/b/a;->m:J

    goto :goto_0

    :cond_0
    const-string v1, "3G"

    .line 266
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    sget-wide v0, Lcom/alibaba/mtl/log/b/a;->k:J

    add-long v4, v0, v2

    sput-wide v4, Lcom/alibaba/mtl/log/b/a;->k:J

    goto :goto_0

    :cond_1
    const-string v1, "4G"

    .line 268
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    sget-wide v0, Lcom/alibaba/mtl/log/b/a;->l:J

    add-long v4, v0, v2

    sput-wide v4, Lcom/alibaba/mtl/log/b/a;->l:J

    goto :goto_0

    :cond_2
    const-string v1, "2G"

    .line 270
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    sget-wide v0, Lcom/alibaba/mtl/log/b/a;->j:J

    add-long v4, v0, v2

    sput-wide v4, Lcom/alibaba/mtl/log/b/a;->j:J

    goto :goto_0

    .line 273
    :cond_3
    sget v0, Lcom/alibaba/mtl/log/b/a;->v:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alibaba/mtl/log/b/a;->v:I

    :goto_0
    return-void
.end method

.method public static declared-synchronized E()V
    .locals 7

    const-class v0, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v0

    .line 312
    :try_start_0
    sget v1, Lcom/alibaba/mtl/log/b/a;->w:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/alibaba/mtl/log/b/a;->w:I

    .line 313
    sget-wide v3, Lcom/alibaba/mtl/log/b/a;->e:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    sget-wide v3, Lcom/alibaba/mtl/log/b/a;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    .line 315
    monitor-exit v0

    return-void

    .line 317
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/alibaba/mtl/log/a;->o:Z

    if-nez v1, :cond_1

    sget v1, Lcom/alibaba/mtl/log/b/a;->w:I

    const/4 v3, 0x6

    if-lt v1, v3, :cond_2

    .line 318
    :cond_1
    invoke-static {v2}, Lcom/alibaba/mtl/log/b/a;->c(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 311
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Ljava/util/List;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/mtl/log/model/a;",
            ">;I)V"
        }
    .end annotation

    const-class v0, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 96
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 99
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_3

    .line 100
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/mtl/log/model/a;

    if-eqz v4, :cond_2

    const-string v6, "6005"

    .line 102
    iget-object v7, v4, Lcom/alibaba/mtl/log/model/a;->T:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 105
    :cond_1
    sget-object v6, Lcom/alibaba/mtl/log/b/a;->a:Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/alibaba/mtl/log/model/a;->X:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    if-eq v2, v4, :cond_2

    .line 107
    sget-object v4, Lcom/alibaba/mtl/log/b/a;->a:Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "CoreStatics"

    const/4 v2, 0x4

    .line 114
    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "[uploadInc]:"

    aput-object v4, v2, v1

    sget-wide v6, Lcom/alibaba/mtl/log/b/a;->g:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v5

    const-string v4, "count:"

    const/4 v6, 0x2

    aput-object v4, v2, v6

    const/4 v4, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v4

    invoke-static {p0, v2}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    sget-wide v7, Lcom/alibaba/mtl/log/b/a;->g:J

    int-to-long v9, p1

    add-long v11, v7, v9

    sput-wide v11, Lcom/alibaba/mtl/log/b/a;->g:J

    const-string p0, "CoreStatics"

    .line 116
    new-array v2, v6, [Ljava/lang/Object;

    const-string v4, "[uploadInc]:"

    aput-object v4, v2, v1

    sget-wide v6, Lcom/alibaba/mtl/log/b/a;->g:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {p0, v2}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v3, p1, :cond_4

    const-string p0, "CoreStatics"

    const-string p1, "Mutil Process Upload Error"

    .line 118
    invoke-static {p0, p1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 94
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c(Z)V
    .locals 0

    const-class p0, Lcom/alibaba/mtl/log/b/a;

    monitor-enter p0

    .line 260
    monitor-exit p0

    return-void
.end method

.method public static declared-synchronized d(I)V
    .locals 2

    const-class v0, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v0

    .line 124
    :try_start_0
    sget v1, Lcom/alibaba/mtl/log/b/a;->u:I

    add-int/2addr v1, p0

    sput v1, Lcom/alibaba/mtl/log/b/a;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 123
    monitor-exit v0

    throw p0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 1

    .line 323
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "6005"

    .line 326
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized l(Ljava/lang/String;)V
    .locals 8

    const-class v0, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v0

    .line 57
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/mtl/log/b/a;->d(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 58
    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "65501"

    .line 60
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_1

    .line 61
    sget-wide v4, Lcom/alibaba/mtl/log/b/a;->y:J

    add-long v6, v4, v2

    sput-wide v6, Lcom/alibaba/mtl/log/b/a;->y:J

    goto :goto_0

    :cond_1
    const-string v1, "65133"

    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    sget-wide v4, Lcom/alibaba/mtl/log/b/a;->w:J

    add-long v6, v4, v2

    sput-wide v6, Lcom/alibaba/mtl/log/b/a;->w:J

    goto :goto_0

    :cond_2
    const-string v1, "65502"

    .line 64
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    sget-wide v4, Lcom/alibaba/mtl/log/b/a;->x:J

    add-long v6, v4, v2

    sput-wide v6, Lcom/alibaba/mtl/log/b/a;->x:J

    goto :goto_0

    :cond_3
    const-string v1, "65503"

    .line 66
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 67
    sget-wide v4, Lcom/alibaba/mtl/log/b/a;->v:J

    add-long v6, v4, v2

    sput-wide v6, Lcom/alibaba/mtl/log/b/a;->v:J

    .line 69
    :cond_4
    :goto_0
    sget-wide v4, Lcom/alibaba/mtl/log/b/a;->e:J

    add-long v6, v4, v2

    sput-wide v6, Lcom/alibaba/mtl/log/b/a;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 56
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized m(Ljava/lang/String;)V
    .locals 7

    const-class v0, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v0

    .line 87
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/mtl/log/b/a;->d(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 88
    monitor-exit v0

    return-void

    .line 90
    :cond_0
    :try_start_1
    sget-wide v1, Lcom/alibaba/mtl/log/b/a;->f:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    sput-wide v5, Lcom/alibaba/mtl/log/b/a;->f:J

    .line 91
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->D()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 86
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized t()V
    .locals 7

    const-class v0, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-wide v1, Lcom/alibaba/mtl/log/b/a;->h:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    sput-wide v5, Lcom/alibaba/mtl/log/b/a;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 127
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized u()V
    .locals 7

    const-class v0, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v0

    .line 132
    :try_start_0
    sget-wide v1, Lcom/alibaba/mtl/log/b/a;->i:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    sput-wide v5, Lcom/alibaba/mtl/log/b/a;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 131
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized v()V
    .locals 7

    const-class v0, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v0

    .line 136
    :try_start_0
    sget-wide v1, Lcom/alibaba/mtl/log/b/a;->n:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    sput-wide v5, Lcom/alibaba/mtl/log/b/a;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 135
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized w()V
    .locals 7

    const-class v0, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v0

    .line 140
    :try_start_0
    sget-wide v1, Lcom/alibaba/mtl/log/b/a;->o:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    sput-wide v5, Lcom/alibaba/mtl/log/b/a;->o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 139
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized x()V
    .locals 7

    const-class v0, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v0

    .line 144
    :try_start_0
    sget-wide v1, Lcom/alibaba/mtl/log/b/a;->p:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    sput-wide v5, Lcom/alibaba/mtl/log/b/a;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 143
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized y()V
    .locals 7

    const-class v0, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v0

    .line 148
    :try_start_0
    sget-wide v1, Lcom/alibaba/mtl/log/b/a;->q:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    sput-wide v5, Lcom/alibaba/mtl/log/b/a;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 147
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized z()V
    .locals 7

    const-class v0, Lcom/alibaba/mtl/log/b/a;

    monitor-enter v0

    .line 152
    :try_start_0
    sget-wide v1, Lcom/alibaba/mtl/log/b/a;->r:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    sput-wide v5, Lcom/alibaba/mtl/log/b/a;->r:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 151
    monitor-exit v0

    throw v1
.end method
