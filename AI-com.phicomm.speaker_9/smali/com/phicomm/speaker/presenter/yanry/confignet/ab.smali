.class final synthetic Lcom/phicomm/speaker/presenter/yanry/confignet/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;

.field private final b:[B


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/ab;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/ab;->b:[B

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/ab;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/ab;->b:[B

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/u$2;->a([B)V

    return-void
.end method
