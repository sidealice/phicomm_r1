.class public Lcom/phicomm/speaker/f/a/a;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# direct methods
.method public static a(F)I
    .locals 2

    .line 65
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 64
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static a(IJLcom/phicomm/speaker/b/d;Ljava/lang/Runnable;)V
    .locals 10

    .line 116
    invoke-interface {p3}, Lcom/phicomm/speaker/b/d;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fail on %s."

    const/4 v1, 0x1

    .line 117
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v5, p0, -0x1

    if-lez v5, :cond_0

    .line 120
    const-class p0, Lcom/phicomm/speaker/model/common/d;

    invoke-static {p0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/phicomm/speaker/model/common/d;

    new-instance v0, Lcom/phicomm/speaker/f/a/b;

    move-object v4, v0

    move-wide v6, p1

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/phicomm/speaker/f/a/b;-><init>(IJLcom/phicomm/speaker/b/d;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/phicomm/speaker/model/common/d;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 122
    :cond_0
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 6

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    const/4 v4, 0x1

    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 132
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "null"

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 133
    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 136
    invoke-static {v3}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static final synthetic b(IJLcom/phicomm/speaker/b/d;Ljava/lang/Runnable;)V
    .locals 0

    .line 120
    invoke-static {p0, p1, p2, p3, p4}, Lcom/phicomm/speaker/f/a/a;->a(IJLcom/phicomm/speaker/b/d;Ljava/lang/Runnable;)V

    return-void
.end method
