package game

import rl "vendor:raylib"

main :: proc() {
	rl.InitWindow(1280,720,"My first game")
    
    player_position: rl.Vector2 = {640,320}
    player_velocity: rl.Vector2 
    
    for !rl.WindowShouldClose(){
        rl.BeginDrawing()
        rl.ClearBackground(rl.BLUE)

        if rl.IsKeyDown(.LEFT){
            player_position.x -= 400*rl.GetFrameTime()    //move 400 px per second chaged
        }
        if rl.IsKeyDown(.RIGHT){
            player_position.x += 400*rl.GetFrameTime()
        }


        rl.DrawRectangleV(player_position,{64,64}, rl.GREEN)
        rl.EndDrawing()
    }

    rl.CloseWindow()
}