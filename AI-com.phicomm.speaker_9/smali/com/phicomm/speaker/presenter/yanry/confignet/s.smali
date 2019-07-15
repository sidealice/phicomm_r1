.class final synthetic Lcom/phicomm/speaker/presenter/yanry/confignet/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

.field private final b:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/confignet/h;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/s;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/s;->b:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/s;->a:Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/s;->b:Ljava/io/IOException;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->b(Ljava/io/IOException;)V

    return-void
.end method
