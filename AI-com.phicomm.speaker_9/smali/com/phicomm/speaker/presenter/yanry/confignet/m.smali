.class final synthetic Lcom/phicomm/speaker/presenter/yanry/confignet/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/phicomm/speaker/b/d;


# instance fields
.field private final a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

.field private final b:Lcom/phicomm/speaker/model/common/d;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/confignet/h;Lcom/phicomm/speaker/model/common/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/m;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/m;->b:Lcom/phicomm/speaker/model/common/d;

    iput-object p3, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/m;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/m;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/m;->b:Lcom/phicomm/speaker/model/common/d;

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->a(Lcom/phicomm/speaker/model/common/d;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
