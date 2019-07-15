.class public Lcom/baidu/location/a/u;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/a/u$a;
    }
.end annotation


# static fields
.field private static A:Lcom/baidu/location/a/u;

.field private static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static j:Ljava/io/File;

.field private static k:I

.field private static l:I

.field private static m:I

.field private static n:I

.field private static o:D

.field private static p:D

.field private static q:D

.field private static r:D

.field private static s:I

.field private static t:I

.field private static u:I

.field private static v:Landroid/location/Location;

.field private static w:Landroid/location/Location;

.field private static x:Landroid/location/Location;

.field private static y:Lcom/baidu/location/b/f;


# instance fields
.field private B:I

.field a:J

.field private z:Lcom/baidu/location/a/u$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/a/u;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/a/u;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/location/a/u;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/d/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/yo.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/a/u;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/d/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/yoh.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/a/u;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/d/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/yom.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/a/u;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/d/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/yol.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/a/u;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/d/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/yor.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/a/u;->i:Ljava/lang/String;

    sput-object v2, Lcom/baidu/location/a/u;->j:Ljava/io/File;

    sput v3, Lcom/baidu/location/a/u;->k:I

    sput v3, Lcom/baidu/location/a/u;->l:I

    const/16 v0, 0x10

    sput v0, Lcom/baidu/location/a/u;->m:I

    const/16 v0, 0x400

    sput v0, Lcom/baidu/location/a/u;->n:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/location/a/u;->o:D

    const-wide v0, 0x3fb999999999999aL    # 0.1

    sput-wide v0, Lcom/baidu/location/a/u;->p:D

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    sput-wide v0, Lcom/baidu/location/a/u;->q:D

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    sput-wide v0, Lcom/baidu/location/a/u;->r:D

    const/4 v0, 0x0

    sput v0, Lcom/baidu/location/a/u;->s:I

    const/16 v0, 0x40

    sput v0, Lcom/baidu/location/a/u;->t:I

    const/16 v0, 0x80

    sput v0, Lcom/baidu/location/a/u;->u:I

    sput-object v2, Lcom/baidu/location/a/u;->v:Landroid/location/Location;

    sput-object v2, Lcom/baidu/location/a/u;->w:Landroid/location/Location;

    sput-object v2, Lcom/baidu/location/a/u;->x:Landroid/location/Location;

    sput-object v2, Lcom/baidu/location/a/u;->y:Lcom/baidu/location/b/f;

    sput-object v2, Lcom/baidu/location/a/u;->A:Lcom/baidu/location/a/u;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/a/u;->z:Lcom/baidu/location/a/u$a;

    iput v2, p0, Lcom/baidu/location/a/u;->B:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/a/u;->a:J

    new-instance v0, Lcom/baidu/location/a/u$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/a/u$a;-><init>(Lcom/baidu/location/a/u;)V

    iput-object v0, p0, Lcom/baidu/location/a/u;->z:Lcom/baidu/location/a/u$a;

    iput v2, p0, Lcom/baidu/location/a/u;->B:I

    return-void
.end method

.method private static declared-synchronized a(Ljava/util/List;I)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    const-class v7, Lcom/baidu/location/a/u;

    monitor-enter v7

    if-eqz p0, :cond_0

    const/16 v0, 0x100

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    monitor-exit v7

    return v0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/baidu/location/a/u;->j:Ljava/io/File;

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/a/u;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/location/a/u;->j:Ljava/io/File;

    sget-object v0, Lcom/baidu/location/a/u;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/a/u;->j:Ljava/io/File;

    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    new-instance v8, Ljava/io/RandomAccessFile;

    sget-object v0, Lcom/baidu/location/a/u;->j:Ljava/io/File;

    const-string v1, "rw"

    invoke-direct {v8, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, -0x3

    goto :goto_0

    :cond_3
    int-to-long v0, p1

    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/baidu/location/a/u;->a(IIIIJ)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    if-ge v1, v6, :cond_5

    :cond_4
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, -0x4

    goto :goto_0

    :cond_5
    sget v6, Lcom/baidu/location/a/u;->n:I

    new-array v9, v6, [B

    sget v6, Lcom/baidu/location/a/u;->k:I

    move v13, v6

    move v6, v1

    move v1, v13

    :goto_1
    if-lez v1, :cond_7

    if-lez v6, :cond_7

    add-int v10, v0, v6

    add-int/lit8 v10, v10, -0x1

    rem-int/2addr v10, v2

    mul-int/2addr v10, v3

    int-to-long v10, v10

    add-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    if-lez v10, :cond_6

    if-ge v10, v3, :cond_6

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v11, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    add-int/lit8 v11, v10, -0x1

    aget-byte v11, v9, v11

    if-nez v11, :cond_6

    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    add-int/lit8 v10, v10, -0x1

    invoke-direct {v11, v9, v12, v10}, Ljava/lang/String;-><init>([BII)V

    invoke-interface {p0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_7
    int-to-long v10, p1

    invoke-virtual {v8, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v8, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v8, v6}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v8, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v8, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v8, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    sget v0, Lcom/baidu/location/a/u;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, -0x5

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized a()Lcom/baidu/location/a/u;
    .locals 2

    const-class v1, Lcom/baidu/location/a/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/location/a/u;->A:Lcom/baidu/location/a/u;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/a/u;

    invoke-direct {v0}, Lcom/baidu/location/a/u;-><init>()V

    sput-object v0, Lcom/baidu/location/a/u;->A:Lcom/baidu/location/a/u;

    :cond_0
    sget-object v0, Lcom/baidu/location/a/u;->A:Lcom/baidu/location/a/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x1

    const/4 v1, 0x0

    if-ne p0, v4, :cond_0

    sget-object v2, Lcom/baidu/location/a/u;->f:Ljava/lang/String;

    sget-object v0, Lcom/baidu/location/a/u;->b:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    :goto_0
    if-nez v2, :cond_4

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    sget-object v2, Lcom/baidu/location/a/u;->g:Ljava/lang/String;

    sget-object v0, Lcom/baidu/location/a/u;->c:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    sget-object v2, Lcom/baidu/location/a/u;->h:Ljava/lang/String;

    sget-object v0, Lcom/baidu/location/a/u;->d:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    sget-object v2, Lcom/baidu/location/a/u;->i:Ljava/lang/String;

    sget-object v0, Lcom/baidu/location/a/u;->d:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v4, :cond_5

    invoke-static {v0, v2}, Lcom/baidu/location/a/u;->a(Ljava/lang/String;Ljava/util/List;)Z

    :cond_5
    const-class v3, Lcom/baidu/location/a/u;

    monitor-enter v3

    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-lez v4, :cond_6

    add-int/lit8 v0, v4, -0x1

    :try_start_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v4, -0x1

    :try_start_2
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :goto_3
    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method public static a(IZ)V
    .locals 13

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    sget-object v1, Lcom/baidu/location/a/u;->f:Ljava/lang/String;

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/baidu/location/a/u;->b:Ljava/util/ArrayList;

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Lcom/baidu/location/a/u;->a(Ljava/lang/String;)V

    :cond_2
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v7, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x4

    invoke-virtual {v7, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    move v6, v0

    move v0, v4

    :goto_2
    sget v4, Lcom/baidu/location/a/u;->l:I

    if-le v6, v4, :cond_c

    if-eqz p1, :cond_b

    add-int/lit8 v4, v0, 0x1

    :goto_3
    if-ge v3, v8, :cond_8

    mul-int v0, v9, v3

    add-int/lit16 v0, v0, 0x80

    int-to-long v10, v0

    invoke-virtual {v7, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v10, v0

    invoke-virtual {v7, v10}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v10, 0x0

    array-length v11, v0

    invoke-virtual {v7, v0, v10, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v3, 0x1

    move v12, v2

    move v2, v0

    move v0, v12

    :goto_4
    add-int/lit8 v3, v6, -0x1

    move v6, v3

    move v3, v2

    move v2, v0

    move v0, v4

    goto :goto_2

    :cond_3
    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    sget-object v1, Lcom/baidu/location/a/u;->g:Ljava/lang/String;

    if-eqz p1, :cond_4

    sget-object v0, Lcom/baidu/location/a/u;->b:Ljava/util/ArrayList;

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lcom/baidu/location/a/u;->c:Ljava/util/ArrayList;

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    sget-object v1, Lcom/baidu/location/a/u;->h:Ljava/lang/String;

    if-eqz p1, :cond_6

    sget-object v0, Lcom/baidu/location/a/u;->c:Ljava/util/ArrayList;

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto/16 :goto_1

    :cond_6
    sget-object v0, Lcom/baidu/location/a/u;->d:Ljava/util/ArrayList;

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    sget-object v1, Lcom/baidu/location/a/u;->i:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/baidu/location/a/u;->d:Ljava/util/ArrayList;

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto/16 :goto_1

    :cond_8
    if-eqz p1, :cond_a

    mul-int v0, v2, v9

    add-int/lit16 v0, v0, 0x80

    int-to-long v10, v0

    :try_start_1
    invoke-virtual {v7, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v10, v0

    invoke-virtual {v7, v10}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v10, 0x0

    array-length v11, v0

    invoke-virtual {v7, v0, v10, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    if-le v0, v3, :cond_9

    const/4 v0, 0x0

    :cond_9
    move v2, v3

    goto :goto_4

    :cond_a
    const/4 v0, 0x1

    move v1, v0

    move v0, v4

    :goto_5
    const-wide/16 v4, 0xc

    invoke-virtual {v7, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v7, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v7, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/a/u;->a(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_b
    move v4, v0

    goto/16 :goto_3

    :cond_c
    move v1, v5

    goto :goto_5
.end method

.method public static a(Lcom/baidu/location/b/a;Lcom/baidu/location/b/f;Landroid/location/Location;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x3

    sget v1, Lcom/baidu/location/d/j;->u:I

    if-ne v1, v3, :cond_1

    invoke-static {p2, p1}, Lcom/baidu/location/a/u;->a(Landroid/location/Location;Lcom/baidu/location/b/f;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/baidu/location/a/u;->a(Landroid/location/Location;Z)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/location/b/a;->c()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/baidu/location/b/a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, p1}, Lcom/baidu/location/a/u;->a(Landroid/location/Location;Lcom/baidu/location/b/f;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object p1, v0

    :cond_2
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/baidu/location/d/j;->a(Lcom/baidu/location/b/a;Lcom/baidu/location/b/f;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/baidu/location/Jni;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/a/u;->c(Ljava/lang/String;)V

    sput-object p2, Lcom/baidu/location/a/u;->w:Landroid/location/Location;

    sput-object p2, Lcom/baidu/location/a/u;->v:Landroid/location/Location;

    if-eqz p1, :cond_0

    sput-object p1, Lcom/baidu/location/a/u;->y:Lcom/baidu/location/b/f;

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/baidu/location/b/f;->j()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p2, p1}, Lcom/baidu/location/a/u;->a(Landroid/location/Location;Lcom/baidu/location/b/f;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p2}, Lcom/baidu/location/a/u;->a(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/b;->d()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&cfr=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_4
    :goto_1
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, p3, v0}, Lcom/baidu/location/d/j;->a(Lcom/baidu/location/b/a;Lcom/baidu/location/b/f;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/baidu/location/Jni;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/a/u;->d(Ljava/lang/String;)V

    sput-object p2, Lcom/baidu/location/a/u;->x:Landroid/location/Location;

    sput-object p2, Lcom/baidu/location/a/u;->v:Landroid/location/Location;

    if-eqz p1, :cond_0

    sput-object p1, Lcom/baidu/location/a/u;->y:Lcom/baidu/location/b/f;

    goto :goto_0

    :cond_5
    invoke-static {p2}, Lcom/baidu/location/a/u;->a(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&cfr=3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&cfr=2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_7
    invoke-static {p2}, Lcom/baidu/location/a/u;->a(Landroid/location/Location;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/b;->d()Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&cfr=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_8
    :goto_2
    invoke-static {p2, p1}, Lcom/baidu/location/a/u;->a(Landroid/location/Location;Lcom/baidu/location/b/f;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_3
    if-nez p0, :cond_9

    if-eqz v0, :cond_0

    :cond_9
    invoke-static {p0, v0, p2, p3, v3}, Lcom/baidu/location/d/j;->a(Lcom/baidu/location/b/a;Lcom/baidu/location/b/f;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/baidu/location/Jni;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/location/a/u;->e(Ljava/lang/String;)V

    sput-object p2, Lcom/baidu/location/a/u;->v:Landroid/location/Location;

    if-eqz v0, :cond_0

    sput-object v0, Lcom/baidu/location/a/u;->y:Lcom/baidu/location/b/f;

    goto/16 :goto_0

    :cond_a
    invoke-static {p2}, Lcom/baidu/location/a/u;->a(Landroid/location/Location;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/b;->d()Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&cfr=3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_b
    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/b;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&cfr=2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_c
    move-object v0, p1

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/baidu/location/d/i;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/16 v0, 0x800

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/16 v0, 0x410

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(IIIIJ)Z
    .locals 3

    const/16 v2, 0x400

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    if-lt p0, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    if-ltz p2, :cond_0

    if-gt p2, v2, :cond_0

    const/16 v1, 0x80

    if-lt p3, v1, :cond_0

    if-gt p3, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/location/Location;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/baidu/location/a/u;->w:Landroid/location/Location;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/baidu/location/a/u;->v:Landroid/location/Location;

    if-nez v2, :cond_3

    :cond_2
    sput-object p0, Lcom/baidu/location/a/u;->w:Landroid/location/Location;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/baidu/location/a/u;->w:Landroid/location/Location;

    invoke-virtual {p0, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    float-to-double v2, v2

    sget v4, Lcom/baidu/location/d/j;->R:F

    float-to-double v4, v4

    mul-double/2addr v4, v2

    mul-double/2addr v4, v2

    sget v6, Lcom/baidu/location/d/j;->S:F

    float-to-double v6, v6

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    sget v4, Lcom/baidu/location/d/j;->T:I

    int-to-double v4, v4

    add-double/2addr v2, v4

    sget-object v4, Lcom/baidu/location/a/u;->v:Landroid/location/Location;

    invoke-virtual {p0, v4}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v4

    float-to-double v4, v4

    cmpl-double v2, v4, v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/location/Location;Lcom/baidu/location/b/f;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/baidu/location/a/u;->y:Lcom/baidu/location/b/f;

    invoke-virtual {p1, v2}, Lcom/baidu/location/b/f;->b(Lcom/baidu/location/b/f;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/baidu/location/a/u;->x:Landroid/location/Location;

    if-nez v0, :cond_2

    sput-object p0, Lcom/baidu/location/a/u;->x:Landroid/location/Location;

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/location/Location;Z)Z
    .locals 1

    sget-object v0, Lcom/baidu/location/a/u;->v:Landroid/location/Location;

    invoke-static {v0, p0, p1}, Lcom/baidu/location/b/d;->a(Landroid/location/Location;Landroid/location/Location;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v5, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x8

    invoke-virtual {v5, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    sget v0, Lcom/baidu/location/a/u;->n:I

    new-array v7, v0, [B

    sget v0, Lcom/baidu/location/a/u;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v0, 0x1

    move v4, v3

    move v3, v0

    move v0, v1

    :goto_1
    if-lez v3, :cond_3

    if-lez v4, :cond_3

    if-ge v4, v2, :cond_1

    move v2, v1

    :cond_1
    add-int/lit8 v8, v4, -0x1

    mul-int/2addr v8, v6

    add-int/lit16 v8, v8, 0x80

    int-to-long v8, v8

    :try_start_1
    invoke-virtual {v5, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    if-lez v8, :cond_2

    if-ge v8, v6, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    add-int/lit8 v9, v8, -0x1

    aget-byte v9, v7, v9

    if-nez v9, :cond_2

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v9, v7, v10, v8}, Ljava/lang/String;-><init>([BII)V

    const/4 v8, 0x0

    invoke-interface {p1, v8, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    const-wide/16 v6, 0xc

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v5, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v5, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/baidu/location/a/u;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;)V
    .locals 5

    const-class v1, Lcom/baidu/location/a/u;

    monitor-enter v1

    :try_start_0
    const-string v0, "err!"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget v2, Lcom/baidu/location/d/j;->p:I

    const/4 v0, 0x1

    if-ne v2, v0, :cond_4

    sget-object v0, Lcom/baidu/location/a/u;->b:Ljava/util/ArrayList;

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sget v4, Lcom/baidu/location/a/u;->m:I

    if-gt v3, v4, :cond_2

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sget v4, Lcom/baidu/location/a/u;->m:I

    if-lt v3, v4, :cond_3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/baidu/location/a/u;->a(IZ)V

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Lcom/baidu/location/a/u;->m:I

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    const/4 v0, 0x2

    if-ne v2, v0, :cond_5

    :try_start_2
    sget-object v0, Lcom/baidu/location/a/u;->c:Ljava/util/ArrayList;

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    if-ne v2, v0, :cond_0

    sget-object v0, Lcom/baidu/location/a/u;->d:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/location/a/u;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    invoke-static {v1}, Lcom/baidu/location/a/u;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/baidu/location/a/u;->d:Ljava/util/ArrayList;

    sget v2, Lcom/baidu/location/a/u;->t:I

    invoke-static {v1, v2}, Lcom/baidu/location/a/u;->a(Ljava/util/List;I)I

    sget-object v1, Lcom/baidu/location/a/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    sget-object v0, Lcom/baidu/location/a/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/baidu/location/a/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    if-nez v0, :cond_0

    sget-object v1, Lcom/baidu/location/a/u;->d:Ljava/util/ArrayList;

    sget v2, Lcom/baidu/location/a/u;->s:I

    invoke-static {v1, v2}, Lcom/baidu/location/a/u;->a(Ljava/util/List;I)I

    sget-object v1, Lcom/baidu/location/a/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    sget-object v0, Lcom/baidu/location/a/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/baidu/location/a/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    if-nez v0, :cond_0

    sget-object v1, Lcom/baidu/location/a/u;->d:Ljava/util/ArrayList;

    sget v2, Lcom/baidu/location/a/u;->u:I

    invoke-static {v1, v2}, Lcom/baidu/location/a/u;->a(Ljava/util/List;I)I

    sget-object v1, Lcom/baidu/location/a/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v0, Lcom/baidu/location/a/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/baidu/location/a/u;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static d(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/location/a/u;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static e()V
    .locals 2

    const/4 v1, 0x0

    sput v1, Lcom/baidu/location/a/u;->l:I

    const/4 v0, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/a/u;->a(IZ)V

    const/4 v0, 0x2

    invoke-static {v0, v1}, Lcom/baidu/location/a/u;->a(IZ)V

    const/4 v0, 0x3

    invoke-static {v0, v1}, Lcom/baidu/location/a/u;->a(IZ)V

    const/16 v0, 0x8

    sput v0, Lcom/baidu/location/a/u;->l:I

    return-void
.end method

.method private static e(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/location/a/u;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/location/a/u;->g:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    const/16 v3, 0x80

    if-le v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&p1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_2
    :goto_1
    sget-object v1, Lcom/baidu/location/a/u;->h:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    const/16 v3, 0x100

    if-le v2, v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&p2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_3
    :goto_2
    sget-object v1, Lcom/baidu/location/a/u;->i:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    const/16 v3, 0x200

    if-le v2, v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&p3="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_0

    :cond_4
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_5
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto/16 :goto_1
.end method


# virtual methods
.method public c()V
    .locals 1

    invoke-static {}, Lcom/baidu/location/b/g;->i()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/a/u;->z:Lcom/baidu/location/a/u$a;

    invoke-virtual {v0}, Lcom/baidu/location/a/u$a;->b()V

    goto :goto_0
.end method
