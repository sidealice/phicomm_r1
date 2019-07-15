.class public Lcom/jph/takephoto/model/InvokeParam;
.super Ljava/lang/Object;
.source "InvokeParam.java"


# instance fields
.field private args:[Ljava/lang/Object;

.field private method:Ljava/lang/reflect/Method;

.field private proxy:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/jph/takephoto/model/InvokeParam;->proxy:Ljava/lang/Object;

    .line 15
    iput-object p2, p0, Lcom/jph/takephoto/model/InvokeParam;->method:Ljava/lang/reflect/Method;

    .line 16
    iput-object p3, p0, Lcom/jph/takephoto/model/InvokeParam;->args:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getArgs()[Ljava/lang/Object;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/jph/takephoto/model/InvokeParam;->args:[Ljava/lang/Object;

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/jph/takephoto/model/InvokeParam;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getProxy()Ljava/lang/Object;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/jph/takephoto/model/InvokeParam;->proxy:Ljava/lang/Object;

    return-object v0
.end method

.method public setArgs([Ljava/lang/Object;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/jph/takephoto/model/InvokeParam;->args:[Ljava/lang/Object;

    return-void
.end method

.method public setMethod(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/jph/takephoto/model/InvokeParam;->method:Ljava/lang/reflect/Method;

    return-void
.end method

.method public setProxy(Ljava/lang/Object;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/jph/takephoto/model/InvokeParam;->proxy:Ljava/lang/Object;

    return-void
.end method
