.class final synthetic Lcom/phicomm/speaker/presenter/yanry/confignet/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;

.field private final b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/z;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/z;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/z;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/z;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->b(Ljava/util/List;)V

    return-void
.end method
