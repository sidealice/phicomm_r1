.class public final Lcom/unisound/vui/common/media/OkHttpDataSourceFactory;
.super Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;


# instance fields
.field private final cacheControl:Lokhttp3/CacheControl;

.field private final callFactory:Lokhttp3/Call$Factory;

.field private final listener:Lcom/google/android/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/TransferListener",
            "<-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 1
    .param p1, "callFactory"    # Lokhttp3/Call$Factory;
    .param p2, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call$Factory;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener",
            "<-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "listener":Lcom/google/android/exoplayer2/upstream/TransferListener;, "Lcom/google/android/exoplayer2/upstream/TransferListener<-Lcom/google/android/exoplayer2/upstream/DataSource;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/unisound/vui/common/media/OkHttpDataSourceFactory;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;Lokhttp3/CacheControl;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;Lokhttp3/CacheControl;)V
    .locals 0
    .param p1, "callFactory"    # Lokhttp3/Call$Factory;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p4, "cacheControl"    # Lokhttp3/CacheControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call$Factory;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener",
            "<-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;",
            "Lokhttp3/CacheControl;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "listener":Lcom/google/android/exoplayer2/upstream/TransferListener;, "Lcom/google/android/exoplayer2/upstream/TransferListener<-Lcom/google/android/exoplayer2/upstream/DataSource;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;-><init>()V

    iput-object p1, p0, Lcom/unisound/vui/common/media/OkHttpDataSourceFactory;->callFactory:Lokhttp3/Call$Factory;

    iput-object p2, p0, Lcom/unisound/vui/common/media/OkHttpDataSourceFactory;->userAgent:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/vui/common/media/OkHttpDataSourceFactory;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iput-object p4, p0, Lcom/unisound/vui/common/media/OkHttpDataSourceFactory;->cacheControl:Lokhttp3/CacheControl;

    return-void
.end method


# virtual methods
.method protected bridge synthetic createDataSourceInternal(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/unisound/vui/common/media/OkHttpDataSourceFactory;->createDataSourceInternal(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/unisound/vui/common/media/OkHttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method protected createDataSourceInternal(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/unisound/vui/common/media/OkHttpDataSource;
    .locals 7
    .param p1, "defaultRequestProperties"    # Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .prologue
    new-instance v0, Lcom/unisound/vui/common/media/OkHttpDataSource;

    iget-object v1, p0, Lcom/unisound/vui/common/media/OkHttpDataSourceFactory;->callFactory:Lokhttp3/Call$Factory;

    iget-object v2, p0, Lcom/unisound/vui/common/media/OkHttpDataSourceFactory;->userAgent:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/unisound/vui/common/media/OkHttpDataSourceFactory;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object v5, p0, Lcom/unisound/vui/common/media/OkHttpDataSourceFactory;->cacheControl:Lokhttp3/CacheControl;

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/unisound/vui/common/media/OkHttpDataSource;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;Lcom/google/android/exoplayer2/upstream/TransferListener;Lokhttp3/CacheControl;Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    return-object v0
.end method
