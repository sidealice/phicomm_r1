.class final synthetic Lcom/phicomm/speaker/presenter/yanry/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/phicomm/speaker/b/d;


# instance fields
.field private final a:Lcom/phicomm/speaker/presenter/yanry/a$4;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a$4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/g;->a:Lcom/phicomm/speaker/presenter/yanry/a$4;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/phicomm/speaker/presenter/yanry/g;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/g;->a:Lcom/phicomm/speaker/presenter/yanry/a$4;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/yanry/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/presenter/yanry/a$4;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
