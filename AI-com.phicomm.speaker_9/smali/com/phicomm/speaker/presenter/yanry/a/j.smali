.class final synthetic Lcom/phicomm/speaker/presenter/yanry/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/phicomm/speaker/presenter/yanry/a/h$2;

.field private final b:Lcom/unisound/lib/music/bean/SingerBean$SingerInfo;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a/h$2;Lcom/unisound/lib/music/bean/SingerBean$SingerInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/j;->a:Lcom/phicomm/speaker/presenter/yanry/a/h$2;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/j;->b:Lcom/unisound/lib/music/bean/SingerBean$SingerInfo;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/j;->a:Lcom/phicomm/speaker/presenter/yanry/a/h$2;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/j;->b:Lcom/unisound/lib/music/bean/SingerBean$SingerInfo;

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/presenter/yanry/a/h$2;->a(Lcom/unisound/lib/music/bean/SingerBean$SingerInfo;Landroid/view/View;)V

    return-void
.end method
