.class final Lcom/ta/utdid2/c/a/d$a;
.super Ljava/lang/Object;
.source "TransactionXMLFile.java"

# interfaces
.implements Lcom/ta/utdid2/c/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/c/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/c/a/d$a$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/ta/utdid2/c/a/b$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/io/File;

.field private final c:I

.field private final c:Ljava/io/File;

.field private c:Ljava/util/Map;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/c/a/d$a;->d:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/io/File;ILjava/util/Map;)V
    .locals 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/d$a;->k:Z

    .line 153
    iput-object p1, p0, Lcom/ta/utdid2/c/a/d$a;->b:Ljava/io/File;

    .line 154
    invoke-static {p1}, Lcom/ta/utdid2/c/a/d;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/c/a/d$a;->c:Ljava/io/File;

    .line 155
    iput p2, p0, Lcom/ta/utdid2/c/a/d$a;->c:I

    if-eqz p3, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object p3, p0, Lcom/ta/utdid2/c/a/d$a;->c:Ljava/util/Map;

    .line 157
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/ta/utdid2/c/a/d$a;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method private a(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 2

    const/4 v0, 0x0

    .line 371
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 374
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 378
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method static synthetic a(Lcom/ta/utdid2/c/a/d$a;)Ljava/util/Map;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/ta/utdid2/c/a/d$a;->c:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic a(Lcom/ta/utdid2/c/a/d$a;)Ljava/util/WeakHashMap;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/ta/utdid2/c/a/d$a;->a:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method static synthetic a(Lcom/ta/utdid2/c/a/d$a;)Z
    .locals 0

    .line 385
    invoke-direct {p0}, Lcom/ta/utdid2/c/a/d$a;->d()Z

    move-result p0

    return p0
.end method

.method private d()Z
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a;->b:Ljava/io/File;

    iget-object v2, p0, Lcom/ta/utdid2/c/a/d$a;->c:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 404
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a;->b:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/ta/utdid2/c/a/d$a;->a(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 408
    :cond_2
    iget-object v2, p0, Lcom/ta/utdid2/c/a/d$a;->c:Ljava/util/Map;

    invoke-static {v2, v0}, Lcom/ta/utdid2/c/a/e;->a(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 409
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 412
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    .line 418
    :catch_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 419
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    return v1
.end method


# virtual methods
.method public a()Lcom/ta/utdid2/c/a/b$a;
    .locals 1

    .line 365
    new-instance v0, Lcom/ta/utdid2/c/a/d$a$a;

    invoke-direct {v0, p0}, Lcom/ta/utdid2/c/a/d$a$a;-><init>(Lcom/ta/utdid2/c/a/d$a;)V

    return-object v0
.end method

.method public a(Ljava/util/Map;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 184
    monitor-enter p0

    .line 185
    :try_start_0
    iput-object p1, p0, Lcom/ta/utdid2/c/a/d$a;->c:Ljava/util/Map;

    .line 184
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iput-boolean p1, p0, Lcom/ta/utdid2/c/a/d$a;->k:Z

    .line 171
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()Z
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ta/utdid2/c/a/d$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    .line 177
    monitor-enter p0

    .line 178
    :try_start_0
    iget-boolean v0, p0, Lcom/ta/utdid2/c/a/d$a;->k:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 177
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 205
    monitor-enter p0

    .line 207
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ta/utdid2/c/a/d$a;->c:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 205
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 226
    monitor-enter p0

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 228
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_0
    monitor-exit p0

    return-wide p2

    :catchall_0
    move-exception p1

    .line 226
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 214
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 212
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
