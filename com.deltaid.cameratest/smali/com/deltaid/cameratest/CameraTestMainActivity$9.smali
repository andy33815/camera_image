.class Lcom/deltaid/cameratest/CameraTestMainActivity$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deltaid/cameratest/CameraTestMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deltaid/cameratest/CameraTestMainActivity;


# direct methods
.method constructor <init>(Lcom/deltaid/cameratest/CameraTestMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$9;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$9;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iput-boolean v1, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->J:Z

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$9;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iput-boolean v1, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->K:Z

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$9;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    const-string v1, "Pictures"

    invoke-virtual {v0, v1}, Lcom/deltaid/cameratest/CameraTestMainActivity;->a(Ljava/lang/String;)V

    return-void
.end method
