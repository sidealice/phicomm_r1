.class public Lcom/alibaba/mtl/appmonitor/c/d;
.super Lorg/json/JSONArray;
.source "ReuseJSONArray.java"

# interfaces
.implements Lcom/alibaba/mtl/appmonitor/c/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 3

    const/4 v0, 0x0

    .line 22
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/mtl/appmonitor/c/d;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 23
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/c/d;->opt(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 24
    instance-of v2, v1, Lcom/alibaba/mtl/appmonitor/c/b;

    if-eqz v2, :cond_0

    .line 25
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v2

    check-cast v1, Lcom/alibaba/mtl/appmonitor/c/b;

    invoke-virtual {v2, v1}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Lcom/alibaba/mtl/appmonitor/c/b;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
