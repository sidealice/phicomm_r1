.class public abstract Lcom/alibaba/mtl/appmonitor/a/d;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Lcom/alibaba/mtl/appmonitor/c/b;


# instance fields
.field public e:I

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3

    .line 60
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/c/e;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    :try_start_0
    const-string v1, "page"

    .line 62
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a/d;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "monitorPoint"

    .line 63
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a/d;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/d;->s:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "arg"

    .line 65
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a/d;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public clean()V
    .locals 1

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/alibaba/mtl/appmonitor/a/d;->e:I

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/d;->o:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/d;->p:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/d;->s:Ljava/lang/String;

    return-void
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 83
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/a/d;->e:I

    const/4 v0, 0x1

    .line 84
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/d;->o:Ljava/lang/String;

    const/4 v0, 0x2

    .line 85
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/d;->p:Ljava/lang/String;

    const/4 v0, 0x3

    .line 86
    array-length v1, p1

    if-le v1, v0, :cond_0

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 87
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/a/d;->s:Ljava/lang/String;

    :cond_0
    return-void
.end method
