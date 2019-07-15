.class final synthetic Lcom/phicomm/speaker/presenter/yanry/confignet/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/phicomm/speaker/b/d;


# instance fields
.field private final a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;

.field private final b:I

.field private final c:Z


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/g;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;

    iput p2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/g;->b:I

    iput-boolean p3, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/g;->c:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/g;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;

    iget v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/g;->b:I

    iget-boolean v2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/g;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;->a(IZ)Z

    move-result v0

    return v0
.end method
