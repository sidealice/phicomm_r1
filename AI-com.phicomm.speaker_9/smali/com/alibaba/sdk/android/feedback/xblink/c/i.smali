.class public Lcom/alibaba/sdk/android/feedback/xblink/c/i;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/util/Map;

.field private c:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/i;->a:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/i;->b:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/i;->c:[B

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/i;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/i;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/i;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/i;->c:[B

    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/i;->b:Ljava/util/Map;

    return-object v0
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/i;->c:[B

    return-object v0
.end method
