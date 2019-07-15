.class public Lcom/alibaba/mtl/appmonitor/d/b;
.super Ljava/lang/Object;
.source "AccurateSampleCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/appmonitor/d/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/mtl/appmonitor/d/b$a;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public b(Ljava/lang/String;)Z
    .locals 2

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/b;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 27
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/b;->a:Lcom/alibaba/mtl/appmonitor/d/b$a;

    sget-object v1, Lcom/alibaba/mtl/appmonitor/d/b$a;->b:Lcom/alibaba/mtl/appmonitor/d/b$a;

    if-ne v0, v1, :cond_1

    return p1

    :cond_1
    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
