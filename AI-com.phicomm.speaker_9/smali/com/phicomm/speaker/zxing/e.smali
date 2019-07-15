.class final Lcom/phicomm/speaker/zxing/e;
.super Ljava/lang/Thread;
.source "DecodeThread.java"


# instance fields
.field private final a:Lcom/phicomm/speaker/zxing/h;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;

.field private final d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/zxing/h;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/zxing/h;",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/google/zxing/ResultPointCallback;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/phicomm/speaker/zxing/e;->a:Lcom/phicomm/speaker/zxing/h;

    .line 58
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/phicomm/speaker/zxing/e;->d:Ljava/util/concurrent/CountDownLatch;

    .line 60
    new-instance v0, Ljava/util/EnumMap;

    const-class v2, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v0, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/phicomm/speaker/zxing/e;->b:Ljava/util/Map;

    if-eqz p3, :cond_0

    .line 62
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/e;->b:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 67
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 68
    :cond_1
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 69
    const-class p2, Lcom/google/zxing/BarcodeFormat;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    const-string p3, "preferences_decode_1D_product"

    .line 70
    invoke-interface {p1, p3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 71
    sget-object p3, Lcom/phicomm/speaker/zxing/c;->a:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_2
    const-string p3, "preferences_decode_1D_industrial"

    .line 73
    invoke-interface {p1, p3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 74
    sget-object p3, Lcom/phicomm/speaker/zxing/c;->b:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_3
    const-string p3, "preferences_decode_QR"

    .line 76
    invoke-interface {p1, p3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 77
    sget-object p3, Lcom/phicomm/speaker/zxing/c;->c:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_4
    const-string p3, "preferences_decode_Data_Matrix"

    .line 79
    invoke-interface {p1, p3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 80
    sget-object p3, Lcom/phicomm/speaker/zxing/c;->d:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_5
    const-string p3, "preferences_decode_Aztec"

    const/4 v0, 0x0

    .line 82
    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 83
    sget-object p3, Lcom/phicomm/speaker/zxing/c;->e:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_6
    const-string p3, "preferences_decode_PDF417"

    .line 85
    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 86
    sget-object p1, Lcom/phicomm/speaker/zxing/c;->f:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 89
    :cond_7
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/e;->b:Ljava/util/Map;

    sget-object p3, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_8

    .line 92
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/e;->b:Ljava/util/Map;

    sget-object p2, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_8
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/e;->b:Ljava/util/Map;

    sget-object p2, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "DecodeThread"

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Hints: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/phicomm/speaker/zxing/e;->b:Ljava/util/Map;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method a()Landroid/os/Handler;
    .locals 1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/e;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :catch_0
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/e;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 109
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 110
    new-instance v0, Lcom/phicomm/speaker/zxing/d;

    iget-object v1, p0, Lcom/phicomm/speaker/zxing/e;->a:Lcom/phicomm/speaker/zxing/h;

    iget-object v2, p0, Lcom/phicomm/speaker/zxing/e;->b:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/zxing/d;-><init>(Lcom/phicomm/speaker/zxing/h;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/phicomm/speaker/zxing/e;->c:Landroid/os/Handler;

    .line 111
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/e;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 112
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
